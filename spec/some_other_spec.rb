require 'spec_helper'
require 'tempfile'

describe "Some usecase 2" do

  before :all do
    puts "OK"
  end

  it "10 cannot be greater than 19" do
    10.should > 19
  end

  it "4 must not be equal to 5" do
    5.should == 4
  end
end
