# frozen_string_literal: true

require_relative '../temperature_converter'

describe TemperatureConverter do
  describe 'Temperature from kelvin' do
    converter = TemperatureConverter.new
    converter.from_kelvin(279.75)

    it 'Check conrersion from kelvin' do
      expect(converter.as_celsius).to be_within(0.01).of(6.6)
      expect(converter.as_fahrenheit).to be_within(0.01).of(43.88)
    end
  end

  describe 'Temperature from celsius' do
    converter = TemperatureConverter.new
    converter.from_celsius(23.5)

    it 'Check conrersion from celsius' do
      expect(converter.as_kelvin).to be_within(0.01).of(296.65)
      expect(converter.as_fahrenheit).to be_within(0.01).of(74.3)
    end
  end

  describe 'Temperature from fahrenheit' do
    converter = TemperatureConverter.new
    converter.from_fahrenheit(96.32)
    it 'Check conrersion from fahrenheit' do
      expect(converter.as_kelvin).to be_within(0.01).of(308.88333)
      expect(converter.as_celsius).to be_within(0.01).of(35.733333)
    end
  end
end
