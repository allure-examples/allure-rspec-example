require 'rspec'
require 'allure-rspec'
require 'parallel_tests'

RSpec.configure do |c|
  c.include AllureRSpec::Adaptor
end

AllureRSpec.configure do |c|
  c.output_dir = "log/screenshots"
  c.clean_dir = false
end

ParallelTests.first_process? ? FileUtils.rm_rf(AllureRSpec::Config.output_dir) : sleep(1)
