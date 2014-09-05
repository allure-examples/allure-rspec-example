require_relative '../spec_helper'
require 'tempfile'

describe "Some usecase 1", :feature => "Some steps spec", :severity => :normal do

  before(:step) do |s|
    puts "Before step #{s.current_step}"
  end

  it "should have some steps", :story => ["first story", "first another story"] do |t|
    sleep rand(5)
    t.attach_file "test-file1", Tempfile.new("test")

    t.step "step1" do
      sleep rand(5)
      expect(1).to eq(1)
    end

    t.step "step2" do
      sleep rand(5)
      expect(0).to be eql(1)
    end
  end


  it "string 'aaa' cannot be equal to string 'bbb'", :story => "second story", :severity => :critical do
    sleep rand(5)
    expect("aaa").to be eql("bbb")
  end


  it "must be broken test case" do
    raise "Unexpected exception"
  end
end
