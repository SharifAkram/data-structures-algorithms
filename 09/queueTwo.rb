# Ruby's implementation of a queue from DSA


class QueueTwo
  def initialize
    @data = []
  end

  def enqueue(element)
    @data << element
  end

  def dequeue
    @data.shift
  end

  def read
    @data.first
  end
end
