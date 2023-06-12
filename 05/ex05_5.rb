# The next function iterates over an array of numbers, and for each number
# whose index is even, it prints the sum of that number plus every number
# in the array. What is this function’s efficiency in terms of Big O
# Notation?

def every_other(array)
  array.each_with_index do |number, index|
    if index.even?
      array.each do |other_number|
        puts number + other_number
      end
    end
  end
end

p every_other([1, 2, 3, 4, 5, 6, 7])
