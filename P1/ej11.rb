def rot13 (string)
  string.tr("A-Ma-mN-Zn-z","N-Zn-zA-Ma-m")
end

puts 'Please enter a string, the program will use the rot13 encryption '
string = gets.chomp
puts rot13(string)
