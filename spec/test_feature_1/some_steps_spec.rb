# frozen_string_literal: true

require_relative '../spec_helper'

describe 'Some usecase 1', severity: :normal do
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
      expect(0).to eq(1)
    end
  end

  it "string 'aaa' cannot be equal to string 'bbb'", severity: :critical do
    expect('aaa').to eq('bbb')
  end

  it 'must be broken test case' do
    raise 'Unexpected exception'
  end
end
