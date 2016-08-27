def inverse (string)
    string.reverse
end

def remove_blanks(string)
    string.delete(" ")
end

def ascii_values(string)
  string.each_byte do |c|
     puts " #{c} => " + c.chr
  end
end

def vowels_to_numbers(string)
  string.downcase.gsub('a','4').gsub('e','3').gsub('i','1').gsub('o','0').gsub('u','6')
end

# Getting values
puts 'Please enter a string.'
string = gets.chomp
puts "What do you want to do? Enter the number of the option \n 1) Inverse the string \n 2) Remove blanks \n 3) Get ASCII values of the characters \n 4) Change vowels by numbers \n 5) Exit"
option =""
while option != "5"
  option = gets.chomp
  case option
    when "1"  then puts inverse(string)
    when "2"  then puts remove_blanks(string)
    when "3"  then ascii_values(string)
    when "4"  then puts vowels_to_numbers(string)
    when "5"  then puts "Bye!"
    else      puts "#{option} it isn't a valid option"
  end
end
