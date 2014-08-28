require_relative '../spec_helper'

describe "Some usecase 4", :feature => "test_feature_2" do

  before :context do
    puts "OK"
  end

  it "10 cannot be greater than 19" do
    sleep rand(5)
    expect(10).to be > 19
  end

  it "4 must not be equal to 5" do
    sleep rand(5)
    expect(5).to be eql(4)
  end
end
