# Creating a stack using an array:

class Stack
  def initialize
    @data = []
  end

  def push(element)
    @data << element
  end

  def pop
    @data.pop
  end

  def read
    @data.last
  end
end

stack = Stack.new

stack.push(10)
stack.push(20)
stack.push(30)
stack.pop

puts stack.read
# 20
