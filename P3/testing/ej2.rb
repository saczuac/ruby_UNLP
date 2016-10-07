def incrementar (x, delta = 1)
  unless x.is_a? Numeric
    raise
  end
  x + delta
end

def concatenar (*s)
  value=''
  s.each do |param|
   value << param.to_s + ' '
    puts param.to_s
  end
  value.tr("\t\n", '').strip
end

 # No sé porqué no me hace translate del \t
