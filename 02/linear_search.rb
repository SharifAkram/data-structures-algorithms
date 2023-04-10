# Ruby's implementation of Linear Search on an ordered array

def linear_search(array, search_value)

    # we iterate through every element in the aray:
    array.each_with_index do |element, index|

        # if we find the value we're looking for, we return its index:
        if element == search_value
            return index

        # if we reach an element that is greater than the value
        # we're looking for, we can exit the loop early:
        elsif element > search_value
            break
        end
    end

    # we return nil if we do not find the value within the array:
    return nil
end

p linear_search([3, 17, 75, 80, 808], 22)
