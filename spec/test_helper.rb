# frozen_string_literal: true

class MyTestHelper
  extend AllureStepAnnotation

  step('Log to stdout')
  def self.log(message)
    puts message
  end
end
