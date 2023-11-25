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
end

array = [70, 80, 90, 60, 50, 40, 225, 221, -15]
sortable_array = SortableArray.new(array)
pivot_index = sortable_array.partition!(0, array.length - 1)
puts sortable_array.array.to_s
puts "Pivot index: #{pivot_index}"
