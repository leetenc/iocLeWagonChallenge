data = []
oxygen = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
carbon = oxygen.clone

oxygen_array = []
carbon_array = []

oxygen_bin = 0
carbon_bin = 0

loop do
  # get the user input from standard input
  input = $stdin.gets

  # exitloop if user quit/exit or end of standard input reached
  break if input.nil?

  # check input
  data << input.chomp.strip

end

print(oxygen)
puts
print(carbon)
puts

oxygen_array = data.clone
carbon_array = data.clone

print(oxygen_array)
puts

oxygen.each_with_index { |_, i|
  one_count = oxygen_array.select {|s| s[i] == '1' }.size
  zero_count = oxygen_array.select {|s| s[i] == '0' }.size

  if one_count >= zero_count
    oxygen_array = oxygen_array.select {|s| s[i] == '1' } if oxygen_array.size > 1
  else
    oxygen_array = oxygen_array.select {|s| s[i] == '0' } if oxygen_array.size > 1
  end

  puts("#{one_count} - #{zero_count}")
  print(oxygen_array)
  puts
}

carbon.each_with_index { |_, i|
  one_count = carbon_array.select {|s| s[i] == '1' }.size
  zero_count = carbon_array.select {|s| s[i] == '0' }.size

  if one_count >= zero_count
    carbon_array = carbon_array.select {|s| s[i] == '0' } if carbon_array.size > 1
  else
    carbon_array = carbon_array.select {|s| s[i] == '1' } if carbon_array.size > 1
  end

  puts("#{one_count} - #{zero_count}")
  print(carbon_array)
  puts
}

print(oxygen_array.size)
puts
print(carbon_array.size)
puts

oxygen_array.first.split('').each_with_index { |val, i|
  x = oxygen.size - 1 - i
  print("#{x}, #{val}, #{2**x}")
  puts
  oxygen_bin += val.to_i * 2**x
}

carbon_array.first.split('').each_with_index { |val, i|
  x = carbon.size - 1 - i

  print("#{x}, #{val}, #{2**x}")
  puts
  carbon_bin += val.to_i * 2**x
}

print("#{oxygen_bin}, #{carbon_bin}")
puts
puts oxygen_bin * carbon_bin
