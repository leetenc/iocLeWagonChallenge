prev = STDIN.gets.strip.chomp.to_i
rise = 0

loop do
  # get the user input from standard input
  input = STDIN.gets

  # exitloop if user quit/exit or end of standard input reached
  break if input.nil? #|| ['quit', 'exit'].include?(input.strip.downcase.chomp)

  # issue the command to the command controller
  input = input.strip.chomp.to_i
  rise += 1 if prev < input
  prev = input

end

puts rise
