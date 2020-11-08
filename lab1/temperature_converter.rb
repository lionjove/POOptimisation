# frozen_string_literal: true

# Simple class to store/convert temperature
class TemperatureConverter
  @kelvin_representation = 0

  def from_kelvin(value)
    @kelvin_representation = value
  end

  def from_celsius(value)
    @kelvin_representation = value + 273.15
  end

  def from_fahrenheit(value)
    @kelvin_representation = (value + 459.67) * 5.0 / 9.0
  end

  def as_kelvin
    @kelvin_representation
  end

  def as_celsius
    @kelvin_representation - 273.15
  end

  def as_fahrenheit
    @kelvin_representation * 9.0 / 5.0 - 459.67
  end
end
