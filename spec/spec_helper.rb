# frozen_string_literal: true

require 'rspec'
require 'allure-rspec'

Allure.configure do |c|
  c.results_directory = 'report/allure-results'
  c.clean_results_directory = true
  c.link_tms_pattern = 'https://example.org/tms/{}'
  c.link_issue_pattern = 'https://example.org/issue/{}'
end
