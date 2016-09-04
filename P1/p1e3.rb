def reemplazar(string)
	string.gsub!("{","do/n").gsub!("}","/nend")
end
puts 'ingrese el codigo '
string = gets.chomp
puts reemplazar(string)
