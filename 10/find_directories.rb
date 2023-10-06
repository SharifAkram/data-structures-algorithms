# Simple program to all files and its subdirectories using recursion

def find_directories(directory)
  Dir.foreach(directory) do |filename|
    if File.directory?("#{directory}/#{filename}") && filename != "." && filename != ".."
      puts "#{directory}/#{filename}"

      find_directories("#{directory}/#{filename}")
    end
  end
end

