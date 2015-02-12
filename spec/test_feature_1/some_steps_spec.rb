require_relative '../spec_helper'
require 'tempfile'

describe "Some usecase 1", :feature => "Some steps spec", :severity => :normal do

  before(:step) do |s|
    puts "Before step #{s.current_step}"
  end

  it "should have some steps", :story => ["first story", "first another story"] do |e|
    sleep rand(5)
    e.attach_file "test-file1", Tempfile.new("test")

    e.step "step1" do
      sleep rand(5)
      1.should == 1
    end

    e.step "step2" do
      sleep rand(5)
      0.should == 1
    end
  end


  it "string 'aaa' cannot be equal to string 'bbb'", :story => "second story", :severity => :critical do
    sleep rand(5)
    "aaa".should == "bbb"
  end


  it "should be passed", :story => "second story", :severity => :critical do
    sleep rand(5)
    "bbb".should == "bbb"
  end

end
