prev1 = STDIN.gets.strip.chomp.to_i
prev2 = STDIN.gets.strip.chomp.to_i
prev3 = STDIN.gets.strip.chomp.to_i

prev_sum = prev1 + prev2 + prev3

rise = 0

loop do
  # get the user input from standard input
  input = STDIN.gets

  # exitloop if user quit/exit or end of standard input reached
  break if input.nil? #|| ['quit', 'exit'].include?(input.strip.downcase.chomp)

  # issue the command to the command controller
  input = input.strip.chomp.to_i

  sum = prev2 + prev3 + input



  rise += 1 if prev_sum < sum
  prev_sum = sum

  prev2 = prev3
  prev3 = input

end

puts rise


