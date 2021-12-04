gamma = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
epsilon = gamma.clone

gamma_bin = 0
eps_bin = 0

loop do
  # get the user input from standard input
  input = $stdin.gets


  # exitloop if user quit/exit or end of standard input reached
  break if input.nil?

  # check input
  arr = input.chomp.strip.downcase.split('')


  arr.each_with_index { |val, i|
    gamma[i] += val.to_i
    epsilon[i] += (val == '0'? 1 : 0)
  }
end

print(gamma)
puts
print(epsilon)
gamma.each_with_index { |val, i|
  x = gamma.size - 1 - i
  if val > epsilon[i]
    gamma_bin += 2**x
  else
    eps_bin += 2**x
  end
}

puts gamma_bin * eps_bin
