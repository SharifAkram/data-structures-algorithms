# top down approach

def sum(array)
  return array[0] if array.length == 1
  return array[0] + sum(array[1, array.length - 1])
end

p sum([100, 333, 20, 4, 342, 4, 2])
