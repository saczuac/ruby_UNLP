def contar ( string, sub_string)
  ocurrences = 0
  string.downcase.split(/[^a-zA-Z]/).each {
     |word| if word == sub_string
               ocurrences+=1
            end }
  ocurrences
end

# Getting values
puts 'Please enter a string, and later a word. This program tells you how many times the word appears into the string'
string = gets.chomp
sub_string = gets.chomp
puts contar(string, sub_string)
