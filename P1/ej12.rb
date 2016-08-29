
def rot (string, n)
  alphabet = ('a'..'z').to_a
  string.downcase.tr("a-z","#{alphabet[n]}-za-#{alphabet[n-1]}")
end

puts 'Please enter a string, and then, the number of times to rotate, the program will use the rotN encryption '
string = gets.chomp
rotate_times = gets.chomp
puts rot(string, rotate_times.to_i)
