# frozen_string_literal: true

def celsius_to_kelvin(temp)
  temp + 273.15
end

def fahrenheit_to_kelvin(temp)
  (temp + 459.67) * 5.0 / 9.0
end

def kelvin_to_celsius(temp)
  temp - 273.15
end

def kelvin_to_fahrenheit(temp)
  temp * 9.0 / 5.0 - 459.67
end
