def contar ( string, sub_string)
  string.downcase.scan(sub_string).length
end

# Getting values
puts 'Please enter a string, and later a substring. This program tells you how many times the substring appears into the string'
string = gets.chomp
sub_string = gets.chomp
puts contar(string, sub_string)
