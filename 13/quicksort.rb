# Partitioning

class SortableArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def partition!(left_pointer, right_pointer)
    pivot_index = right_pointer
    pivot = @array[pivot_index]
    right_pointer -= 1

    while true

      while @array[left_pointer] < pivot do
        left_pointer += 1
      end

      while @array[right_pointer] > pivot do
        right_pointer -= 1
      end

      if left_pointer >= right_pointer
        break

      else
        @array[left_pointer], @array[right_pointer] =
        @array[right_pointer], @array[left_pointer]
        left_pointer += 1
      end
    end

    @array[left_pointer], @array[pivot_index] =
    @array[pivot_index], @array[left_pointer]

    return left_pointer
  end

  def quicksort!(left_index, right_index)
    if right_index - left_index <= 0
      return
    end

    # Partition the range of elements and grab the index of the pivot:​
    pivot_index = partition!(left_index, right_index)
    # Recursively call this quicksort! method on whatever​ ​
    # is to the left of the pivot:
    quicksort!(left_index, pivot_index - 1)
    # Recursively call this quicksort! method on whatever​ ​
    # is to the right of the pivot:​
    quicksort!(pivot_index + 1, right_index)
  end
end

array = [70, 80, 90, 60, 50, 40, 225, 221, -15]
sortable_array = SortableArray.new(array)
pivot_index = sortable_array.partition!(0, array.length - 1)
puts sortable_array.array.to_s
puts "Pivot index: #{pivot_index}"
