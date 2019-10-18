# frozen_string_literal: true

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:test) do |task|
  task.rspec_opts = '--color --require spec_helper --format documentation --format AllureRspecFormatter'
  task.verbose = false
end
