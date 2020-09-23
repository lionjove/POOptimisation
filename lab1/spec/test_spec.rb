# frozen_string_literal: true

require_relative '../converter_functions'

RSpec.describe 'ConvertCToK' do
  it '1 -> 274.15' do
    expect(celsius_to_kelvin(1)).to be_within(0.01).of(274.15)
  end
end

RSpec.describe 'ConvertFToK' do
  it '1 -> 274.15' do
    expect(fahrenheit_to_kelvin(1)).to be_within(0.01).of(255.928)
  end
end

RSpec.describe 'ConvertKToC' do
  it '1 -> 274.15' do
    expect(kelvin_to_celsius(275.15)).to be_within(0.01).of(2)
  end
end

RSpec.describe 'ConvertKToF' do
  it '1 -> 274.15' do
    expect(kelvin_to_fahrenheit(275)).to be_within(0.01).of(35.33)
  end
end
