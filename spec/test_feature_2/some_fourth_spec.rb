require_relative '../spec_helper'

describe "Some usecase 4", :feature => "test_feature_2" do

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
