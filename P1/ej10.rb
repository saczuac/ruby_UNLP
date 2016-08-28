def a_ul (strings_hash)
  html_string = "<ul>"
  strings_hash.each do |key, value|
     html_string += "<li>" + "#{key}: #{value} " + "</li>"
  end
  html_string +="</ul>"
end

# Getting data..
puts '<--   HTML format of the Hash   -->'
puts a_ul({ perros: 1, gatos: 1, peces: 0})
