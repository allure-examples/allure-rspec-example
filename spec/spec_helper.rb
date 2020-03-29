# frozen_string_literal: true

require 'rspec'
require 'allure-rspec'

AllureRspec.configure do |c|
  c.results_directory = 'report/allure-results'
  c.clean_results_directory = true
  c.link_tms_pattern = 'https://example.org/tms/{}'
  c.link_issue_pattern = 'https://example.org/issue/{}'
end

RSpec.configure do |config|
  config.after(:example) do
    Allure.step(name: 'After hook step')
    Allure.add_attachment(
      name: 'After hook attach',
      source: 'Attachment',
      type: Allure::ContentType::TXT,
      test_case: true
    )
  end
end
