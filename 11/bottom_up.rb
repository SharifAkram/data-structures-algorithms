# bottom up strategy to calculate factorials


def factorial(n, i=1, product=1)
  return product if i > n
  return factorial(n, i + 1, product * i)
end
