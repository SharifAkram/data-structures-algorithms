# O(26**N)

# In our password cracker, each time we increase N by one,
# the number of steps get multiplied by 26.
# This takes an incredible amount of time,
# which is why brute force is such an inefficient way to crack a password.

def every_password(n)
  (("a" * n)..("z" * n)).each do |str|
    puts str
  end
end

puts every_password(3)
