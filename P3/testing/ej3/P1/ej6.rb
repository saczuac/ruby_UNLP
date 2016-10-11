def contar ( string, sub_string)
  ocurrences = 0
  string.downcase.split(/[^a-zA-Z]/).select {
     |word|word == sub_string}.count
end
