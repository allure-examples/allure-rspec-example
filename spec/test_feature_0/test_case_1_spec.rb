# frozen_string_literal: true

describe 'allure features' do
  extend AllureStepAnnotation

  step('Add numbers')
  def add(a, b)
    a + b
  end

  step('Substract')
  def substract(a, b)
    a - b
  end

  step('Failed assertion')
  def fail
    expect(2).to eq(1)
  end

  after do |ex|
    ex.run_step('add after attach') do
      Allure.add_attachment(
        name: 'After hook attach',
        source: 'Attachment',
        type: Allure::ContentType::TXT
      )
    end
  end

  it 'test_case_1', tms: 'QA-124', severity: :normal do |example|
    MyTestHelper.log('I am test_case_1')

    res = add(1, 2)

    example.run_step('Pre-Requisites') do
      example.run_step('Nested') do
        expect(res).to eq(3)
      end
    end
  end

  it 'test_case_2', tms: 'QA-123', severity: :critical do |example|
    MyTestHelper.log('I am test_case_2')

    example.run_step('expectation') do
      expect(substract(1, 2)).to eq(-1)
    end
  end

  it 'test_case_3' do
    fail
  end
end
