# Use Big O Notation to describe the time complexity of the following function,
# which accepts an array of strings and prints each string in multiple cases:

def multiple_cases(array)
  array.each do |string|
    puts string.upcase
    puts string.downcase
    puts string.capitalize
  end
end

p multiple_cases(['Hello there!'])
