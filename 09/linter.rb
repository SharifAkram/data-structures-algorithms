# Basic Javascript linter for opening and closing of braces

require_relative 'stack'

class Linter
  def initialize
    # We use a simple array to serve as out stack
    @stack = Stack.new
    # default is 1, set to line 75 where method invocation and variable
    # assignment begins
    @line_number = 75
  end

  def lint(text)
    # We start with a loop which reads each character in out text and its index
    # and increments by 1
    text.each_char.with_index do |char, index|
      if char == "\n"
        @line_number += 1
      end

      # If the character is an opening brace:
      if is_opening_brace?(char)
        # We push it onto the stack:
        @stack.push(char)
      # If the character is a closing brace:
      elsif is_closing_brace?(char)
        # Pop from the stack:
        popped_opening_brace = @stack.pop
        # If the stack was empty, so what we popped was nil,
        # It means that an opening brace is missing:
        if !popped_opening_brace
          return "#{char} doesn't have an opening brace on line #{@line_number}"
        end

        # If the popped opening brace doesn't match the
        # current closing brace, we produce an error:
        if is_not_a_match(popped_opening_brace, char)
          return "#{char} has mismatched opening brace on line #{@line_number}"
        end
      end
    end

    # If we get to the end of line, and the stack isn't empty:
    if @stack.read
      # It means we have an opening brace without a
      # corresponding closing brace, so we produce an error:
      return "#{@stack.read} does not have a closing brace on line #{@line_number}"
    end

    # Return true if line has no errors:
    return true
  end

  def line_number
    @line_number
  end

  private

  def is_opening_brace?(char)
    ["(", "[", "{"].include?(char)
  end

  def is_closing_brace?(char)
    [")", "]", "}"].include?(char)
  end

  def is_not_a_match(opening_brace, closing_brace)
    closing_brace != {"(" => ")", "[" => "]", "{" => "}"}[opening_brace]
  end
end

linter = Linter.new
result = linter.lint("
    if (array1.length > array1.length) {
        largerArray = array1;
        smallerArray = array2;
    } else {
        largerArray = array2;
        smallerArray = array1;
") # missing }

puts result
# { does not have a closing brace on line 82
