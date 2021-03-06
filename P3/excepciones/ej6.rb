# Este script lee una secuencia de no menos de 15 números desde teclado y luego imprime el resultado de la división
# de cada número por su entero inmediato anterior.
# Como primer paso se pide al usuario que indique la cantidad de números que ingresará.
load 'ej7.rb'

cantidad = 0
while cantidad < 15
 puts '¿Cuál es la cantidad de números que ingresará? Debe ser al menos 15'
 begin
     cantidad = gets.to_i
 rescue Exception
     raise NoNumericException.new, "Se debe ingresar un valor numérico"
     cantidad = 0
 end
end
# Luego se almacenan los números
numeros = 1.upto(cantidad).map do
 puts 'Ingrese un número'
 begin
     numero = gets.to_i
 rescue Exception
     raise NoNumericException.new, "Se debe ingresar un valor numérico"
     retry
 end
end
# Y finalmente se imprime cada número dividido por su número entero inmediato anterior

resultado = numeros.map { |x| x / (x - 1) rescue 'error'}
puts 'El resultado es: %s' % resultado.join(', ')
