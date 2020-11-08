# frozen_string_literal: true

require_relative 'temperature_converter'

input_num = gets.to_f
input_type = gets.chop
result_type = gets.chop

converter = TemperatureConverter.new

case input_type
when 'C'
  converter.from_celsius(input_num)
when 'F'
  converter.from_fahrenheit(input_num)
when 'K'
  converter.from_kelvin(input_num)
else
  puts 'Unknown input type.'
end

case result_type
when 'C'
  puts converter.as_celsius
when 'F'
  puts converter.as_fahrenheit
when 'K'
  puts converter.as_kelvin
else
  puts 'Unknown result type.'
end
