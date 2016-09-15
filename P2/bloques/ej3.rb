def varparams (*arg)
    begin
        yield arg
        return :ok
    rescue RuntimeError
        puts "Algo salió mal..."
        return :rt
    rescue NoMethodError => e
        puts "No encontré un método: #{e.message}"
        return :nm
    rescue
        puts "¡No sé qué hacer!"
    end
end

varparams(1,2,3,4,5,6) {|x| x.inspect}

# Con raise por ej {|x| raise } se levanta RuntimeError
# Con la llamada a un método que no existe {|x| x.noexiste} se levanta NoMethodError
# Si no se pasa un bloque se levantaría una excepción no tratada
