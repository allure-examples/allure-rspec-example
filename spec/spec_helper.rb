# frozen_string_literal: true

require 'rspec'
require 'allure-rspec'

Allure.configure do |c|
  c.results_directory = 'report/allure-results'
  c.clean_results_directory = true
  c.link_tms_pattern = 'http://www.jira.com/browse/{}'
  c.link_issue_pattern = 'http://www.jira.com/browse/{}'
end
