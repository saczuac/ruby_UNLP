def replace_str ( string ="" )
         string.gsub('{', "\n do")
         string.gsub('}', "\n end")
        string
end

cadena = ""
puts 'Ingrese código'
while cadena != 'exit' do
         cadena = gets.chomp
         puts replace_str(cadena)
end
