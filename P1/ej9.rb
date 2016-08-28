def longitud (strings_array)
  strings_array.collect {|string| string.length }
end

# Getting data..

puts 'Please enter strings, and then write \'exit\''
string = ""
strings_array = []
while string != 'exit' do
  unless (string = gets.chomp) == 'exit'
      strings_array.push(string)
  end
end
puts strings_array.to_s
puts longitud(strings_array).to_s
