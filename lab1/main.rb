# frozen_string_literal: true

require_relative 'converter_functions'

input_num = gets.to_f
input_type = gets.chop
result_type = gets.chop

kelvin_representation = input_num
if input_type == 'C'
  kelvin_representation = celsius_to_kelvin(kelvin_representation)
elsif input_type == 'F'
  kelvin_representation = fahrenheit_to_kelvin(kelvin_representation)
elsif result_type != 'K'
  puts 'Unknown input type. Assuming Kelvin'
end

result = kelvin_representation
if result_type == 'C'
  result = kelvin_to_celsius(kelvin_representation)
elsif result_type == 'F'
  result = kelvin_to_fahrenheit(kelvin_representation)
elsif result_type != 'K'
  puts 'Unknown result type. Assuming Kelvin'
end

puts result
