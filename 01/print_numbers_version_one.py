# Take a look at these two functions, both of which print all the even
# numbers from 2 to 100:


def print_numbers_version_one():
    number = 2

    while number <= 100:
        # If number is even, print it:
        if number % 2 == 0:
            print(number)

        number += 1


def print_numbers_version_two():
    number = 2

    while number <= 100:
        print(number)

        # Increase number ny 2, which by definition,
        # is the next even number:
        number += 2
