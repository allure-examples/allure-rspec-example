# frozen_string_literal: true

describe 'feature 4', severity: :normal, allure_id: '123' do
  it 'should have some steps' do |t|
    t.run_step 'step1' do
      t.add_attachment(
        name: 'attachment',
        source: 'Some string',
        type: Allure::ContentType::TXT,
        test_case: false
      )
      expect(1).to eq(1)
    end

    Allure.run_step 'step2' do
      expect(0).to eq(0)
    end
  end

  it 'should pass', issue_1: 'QA-123', issue_2: 'QA-124' do
    expect(5).to eq(5)
  end
end
