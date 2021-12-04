pos = 0
depth = 0
aim = 0

loop do
  # get the user input from standard input
  input = $stdin.gets

  # exitloop if user quit/exit or end of standard input reached
  break if input.nil?

  # check input
  arr = input.chomp.strip.downcase.split(' ')
  move = arr[1].to_i

  case arr[0]
  when 'forward'

    pos += move
    depth += (aim * move)

  when 'down'

    aim += move

  when 'up'

    aim -= move

  end
end

puts pos * depth
