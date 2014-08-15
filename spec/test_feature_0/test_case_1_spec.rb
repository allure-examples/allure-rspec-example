require_relative '../spec_helper'

describe 'test_feature', :feature => "test_feature_0" do
  it 'test_case_1' do
    step "Pre-Requisites" do
      20.should > 19
    end

    step "Step2" do
      10.should > 19
    end
  end
end