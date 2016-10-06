def opcion_1
 a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
 b = 3
 c = a.map do |x|
 x * b
 end
 puts c.inspect
rescue
 0
end

def opcion_2
 c = begin
 a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
 b = 3
 a.map do |x|
 x * b
 end
 rescue
 0
 end
 puts c.inspect
end

def opcion_3
 a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
 b = 3
 c = a.map { |x| x * b } rescue 0
 puts c.inspect
end

def opcion_4
 a = [1, nil, 3, nil, 5, nil, 7, nil, 9, nil]
 b = 3
 c = a.map { |x| x * b rescue 0 }
 puts c.inspect
end

opcion_1

#  opcion_1 A method "def" can serve as a "begin" statement
# opcion 2 Unlike def ... end, an begin ... end block doesn't create a new variable scope.
    #a = 123
    #b = begin
    #  a = 456  # overwrites a
    #end
    #p a: a, b: b #=> {:a=>456, :b=>456}
# opcion 3 Ante una excepción devuelve 0
# opcion 4 Cada vez que se levanta una excepción devuelve 0 al resultado del bloque por lo tanto c = [3,0,9,15,0,21,0,27,0]
