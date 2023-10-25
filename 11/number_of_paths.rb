# Staircase problem

def number_of_paths(n, memo = {})
  return 0 if n < 0
  return 1 if n == 1 || n == 0
  return number_of_paths(n - 1) + number_of_paths(n - 2) + number_of_paths(n - 3)
end

p number_of_paths(5)
p number_of_paths(10)
p number_of_paths(25)

# With memoization for large values using iterative approach

def number_of_paths_memo(n)
  return 0 if n < 0
  return 1 if n == 0 || n == 1

  # Create an array to store the number of paths for each value of n
  dp = [0] * (n + 1)
  dp[0] = 1
  dp[1] = 1
  dp[2] = 2

  (3..n).each do |i|
    dp[i] = dp[i - 1] + dp[i - 2] + dp[i - 3]
  end

  return dp[n]
end

p number_of_paths_memo(250)
p number_of_paths_memo(377)
p number_of_paths_memo(1050)
