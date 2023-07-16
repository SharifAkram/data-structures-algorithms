# 5(N) => O(N)


def mark_inventory(clothing_items):
    clothing_options = []

    for item in clothing_items:
        # For sizes 1 through 5 (Python ranges go UP TO second)
        # number, but not include it):
        for size in range(1, 6):
            clothing_options.append(item + " Size: " + str(size))

    return "[\n" + "\n".join(clothing_options) + "\n]"


print(mark_inventory(["White Shirt", "Black Shirt", "Navy Shirt"]))

"""

[
White Shirt Size: 1
White Shirt Size: 2
White Shirt Size: 3
White Shirt Size: 4
White Shirt Size: 5
Black Shirt Size: 1
Black Shirt Size: 2
Black Shirt Size: 3
Black Shirt Size: 4
Black Shirt Size: 5
Navy Shirt Size: 1
Navy Shirt Size: 2
Navy Shirt Size: 3
Navy Shirt Size: 4
Navy Shirt Size: 5
]

"""
