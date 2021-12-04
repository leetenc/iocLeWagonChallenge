pos = 0
depth = 0

loop do
  # get the user input from standard input
  input = STDIN.gets

  # exitloop if user quit/exit or end of standard input reached
  break if input.nil?

  # check input
  arr = input.chomp.strip.downcase.split(" ")
  move = arr[1].to_i

  pos += move if arr[0] == "forward"
  depth += move if arr[0] == "down"
  depth -= move if arr[0] == "up"
end

puts pos * depth
