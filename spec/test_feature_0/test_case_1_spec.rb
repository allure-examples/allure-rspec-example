# frozen_string_literal: true

require_relative '../spec_helper'

describe 'test_feature', tms_1: 'QA-123', tms_2: 'QA-124' do
  it 'test_case_1' do
    Allure.run_step('Pre-Requisites') do
      expect(20).to be > 19
    end

    Allure.run_step('Step2') do
      expect(10).to be > 19
    end
  end

  it 'must be pending example'

  it 'must be pending example 2'
end
