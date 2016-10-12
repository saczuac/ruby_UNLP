def get_alphabet()
    ('A'..'Z').to_a
end


def expansor (string)
    unless string.instance_of? String
        raise 'La entrada no es un string'
    end
    if (string.length == 0)
        raise 'El string es vacío'
    end
    alphabet = get_alphabet
    result = ""
    begin
        string.each_char { |chr|
            if (alphabet.index(chr.upcase) == nil)
                raise
            end
            result << chr * (alphabet.index(chr.upcase) + 1)
         }
    rescue
        raise 'El formato del string es incorrecto'
    end
    result
end
