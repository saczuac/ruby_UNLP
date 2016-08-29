def notacion_hexadecimal (rgb_array)
    r = rgb_array[0]; g = rgb_array[1]; b = rgb_array[2]
    puts "##{to_hex r}#{to_hex g}#{to_hex b}"
end

def to_hex(n)
  # rjust method...
  # If integer is greater than the length of str, returns a new String of length integer with str right justified and padded with padstr; otherwise, returns str.
  # "hello".rjust(20, '1234')   #=> "123412341234123hello"
   n.to_s(16).rjust(2, '0').upcase
 end

def notacion_entera (rgb_array)
   r = rgb_array[0]; g = rgb_array[1]; b = rgb_array[2]
   puts r + g*256 + b*256*256
end

notacion_hexadecimal([0, 128, 255])
notacion_entera([0, 128, 255])
