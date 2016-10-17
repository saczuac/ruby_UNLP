def contar ( string, sub_string)
  string.downcase.split(/[^a-zA-Z]/).select {|word| word == sub_string}.count
end

# Getting values
puts 'Please enter a string, and later a word. This program tells you how many times the word appears into the string'
string = gets.chomp
sub_string = gets.chomp
puts contar(string, sub_string)
