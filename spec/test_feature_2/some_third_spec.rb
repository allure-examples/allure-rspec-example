# frozen_string_literal: true

describe 'Some usecase 3' do
  it '10 cannot be greater than 19' do
    expect(10).to be > 19
  end

  it '4 must not be equal to 5' do
    expect(5).to eq(4)
  end
end
