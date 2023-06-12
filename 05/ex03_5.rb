# Use Big O Notation to describe the time complexity of the following
# function, which returns the sum of all numbers of an array after the
# numbers have been doubled:

def double_then_sum(array)
  doubled_array = []

  array.each do |number|
    doubled_array << number *= 2
  end

  sum = 0

  doubled_array.each do |number|
    sum += number
  end

  return sum
end

p double_then_sum([1, 2, 3, 4, 5, 6, 7])
