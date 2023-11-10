=begin

# O(2 ** N)

def max(array)
  puts "RECURSION"
  return array[0] if array.length == 1
  if array[0] > max(array[1, array.length - 1])
    return array[0]
  else
    return max(array[1, array.length - 1])
  end
end

puts max([1, 2, 3, 4])

=end

# O(N)

def max(array)
  puts "RECURSION"
  return array[0] if array.length == 1
  max_of_remainder = max(array[1, array.length - 1])
  if array[0] > max_of_remainder
    return array[0]
  else
    return max_of_remainder
  end
end

puts max([1, 2, 3, 4])
