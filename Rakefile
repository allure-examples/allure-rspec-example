def generate_report
  puts "Generating report"
  report = "log/screenshots --report-path log/reports"
  system("allure generate -v 1.4.4 #{report}")
end

def launch(params = {})
  if params[:test_options].include? '-e'
    count = params[:test_options].split(/failed/).count - 1
  end
  system("parallel_rspec spec -n #{params[:processes] || 5} \
    --test-options '#{params[:test_options]}' --serialize-stdout \
         #{params[:spec_file_pattern]}")
end

def run(spec_file_pattern)
  puts spec_file_pattern
  launch(processes: "5".to_i,
         test_options: "--require ./failures_formatter.rb \
    --format FailureCatcher", spec_file_pattern: spec_file_pattern)
end

def rerun(spec_file_pattern)
  launch(processes: "5".to_i, test_options: gather_failures, spec_file_pattern: spec_file_pattern)
end

def gather_failures
  opts = ""
  files = Dir.glob('*.failures')
  files.each { |file| opts << File.read(file).gsub(/\n/, ' ') }
  all_failures = './all.failures'
  File.write(all_failures, opts.rstrip)
  return File.read all_failures
end

def cleanup(files = '')
  puts "Deleting all failure files"
  system("rm #{files}") unless Dir.glob("#{files}").empty?
end

# To-Do Add processes as an argument to also pass number of processes as an argument
desc "parallel test execution with failure retries"
task :run_tests, [:spec_file_pattern] do |t, args|
  run args[:spec_file_pattern.to_s]
  puts "Before re-run #{$?.to_s}"
  if $?.success? == false
    rerun args[:spec_file_pattern.to_s]
    puts "After re-run #{$?.to_s}"
    if $?.success? == false
      generate_report
      raise "Rerun still had failing tests"
    else
      generate_report
      puts "Rerun resulted in all passing"
    end
  else
    generate_report
    puts "All tests passed in the first run"
  end
end
