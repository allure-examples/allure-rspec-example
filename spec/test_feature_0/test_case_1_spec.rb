require_relative '../spec_helper'

describe 'test_feature', :feature => "test_feature_0" do
  it 'test_case_1' do |t|
    t.step "Pre-Requisites" do
      sleep rand(5)
      expect(20).to be > 19
    end

    t.step "Step2" do
      sleep rand(5)
      expect(10).to be > 19
    end
  end

  it "must be pending example"

  it "must be pending example 2", :story => "Another story"
end
