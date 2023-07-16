# O(1)


def sample(array):
    first = array[0]
    middle = array[int(len(array) / 2)]
    last = array[-1]

    return [first, middle, last]


print(sample([1, 2, 30]))
# [1, 2, 30]

print(sample([10, 20, 30, 40]))
# [10, 30, 40]
