# Ruby's implementation of a queue

class Queue
  def initialize
    @data = []
  end

  def enqueue(element)
    @data << element
  end

  def dequeue
    # The Ruby shift method removes and returns
    # the first element of an array:
    @data.shift
  end

  # added to fix errors in modified print_manager example
  def empty?
    @data.empty?
  end

  # added to fix errors in modified print_manager example
  def size
    @data.size
  end

  def read
    @data.first
  end
end

