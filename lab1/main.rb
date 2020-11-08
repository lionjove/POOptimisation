# frozen_string_literal: true

require_relative 'temperature_converter'

input_num = gets.to_f
input_type = gets.chop
result_type = gets.chop

converter = TemperatureConverter.new

if input_type == 'C'
  converter.from_celsius(input_num)
elsif input_type == 'F'
  converter.from_fahrenheit(input_num)
elsif result_type == 'K'
  converter.from_kelvin(input_num)
else
  puts 'Unknown input type.'
end

if result_type == 'C'
  puts converter.as_celsius
elsif result_type == 'F'
  puts converter.as_fahrenheit
elsif result_type == 'K'
  puts converter.as_kelvin
else
  puts 'Unknown result type.'
end
