# frozen_string_literal: true

require_relative '../spec_helper'

describe 'Some usecase 2' do
  it '10 cannot be greater than 19' do
    expect(10).to be > 19
  end

  it '4 must not be equal to 5' do
    expect(5).to eq(4)
  end

  it 'should pass', issue_1: 'QA-123', issue_2: 'QA-124' do
    expect(5).to eq(5)
  end
end
