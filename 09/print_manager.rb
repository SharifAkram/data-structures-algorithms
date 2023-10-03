# Print manager example modified by Sharif Akram

require_relative 'queue'

class PrintManager
  def initialize
    @queue = Queue.new
    @current_document_number = 1
  end

  def queue_print_job
    document_name = "Document #{@current_document_number}"
    @queue.enqueue(document_name)
    @current_document_number += 1
    start if @queue.size == 1
  end

  def run
    @running = true

    while @running
      document = @queue.dequeue

      if document
        print(document)
      else
        stop
      end
    end
  end

  def stop
    @running = false
  end

  private

  def print(document)
    # Code to run the actual printer goes here.
    # For demo purposes, we'll print to the terminal:
    puts document
  end

  def start
    Thread.new { run }
  end
end

print_manager = PrintManager.new

# Queue up some print jobs automatically
10.times do
  print_manager.queue_print_job
end

# Sleep for a while to allow the print jobs to complete
sleep(2)

# Queue up more print jobs
10.times do
  print_manager.queue_print_job
end

# Sleep again to let the additional print jobs complete
sleep(2)

# Stop the print manager (optional)
print_manager.stop

=begin

# Original example

require_relative 'queue'

class PrintManager
  def initialize
    @queue = Queue.new
  end

  def queue_print_job(document)
    @queue.enqueue(document)
  end

  def run
    # Each time this loop runs, we read the document at the front
    # of the queue:
    while @queue.read
      print(@queue.dequeue)
    end
  end

  private

  def print(document)
    # Code to run the actual printer goes here.
    # For demo purposes, we'll print to the terminal:
    puts document
  end
end

print_manager = PrintManager.new
print_manager.queue_print_job("First Document")
print_manager.queue_print_job("Second Document")
print_manager.queue_print_job("Third Document")
print_manager.run

=end
