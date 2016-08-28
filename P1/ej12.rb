def rot (string, rotate_times)
  encrypted_string = ""
  string.each_byte {
     |c|
    if (("a".."z").include?(c.chr)) || (("A".."Z").include?(c.chr))
     c += rotate_times
    end
    encrypted_string += c.chr
    }
  encrypted_string
end

# TODO: Have to rotate into the alphabet not in the ASCII characters

puts 'Please enter a string, and then, the number of times to rotate, the program will use the rotN encryption '
string = gets.chomp
rotate_times = gets.chomp
puts rot(string, rotate_times.to_i)
