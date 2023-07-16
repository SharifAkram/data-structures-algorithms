# N + N = 2N = > O(N)

def average_celsius(fahrenheit_readings)
  # check if the input array is empty
  return nil if fahrenheit_readings.empty?

  # collect Celsius numbers here:
  celsius_numbers = []

  # convert each reading to Celsius and add to array:
  fahrenheit_readings.each do |fahrenheit_reading|
    celsius_conversion = (fahrenheit_reading - 32) / 1.8
    celsius_numbers.push(celsius_conversion)
  end

  # get sum of all Celsius numbers:
  sum = 0.0

  celsius_numbers.each do |celsius_number|
    sum += celsius_number
  end

  # return mean average
  return sum / celsius_numbers.length
end

# print average_celsius([32, 32])
# 0.0

print average_celsius([212, 212])
# 100.00

