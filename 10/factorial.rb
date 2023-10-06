# Using recursion to solve a number's factorial

def factorial(number)
  if number == 1
    return 1
  else
    return number * factorial(number - 1)
  end
end

puts factorial(5)
# 120
