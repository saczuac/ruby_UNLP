# Tira un dado virtual de 6 caras
def tirar_dado
 rand 1..6
end

def fichas
  @fichas ||= Hash.new(0)
end
# Mueve la ficha de un jugador tantos casilleros como indique el dado en un tablero virtual de 40 posiciones.
# Si no se recibe la cantidad de casilleros, aprovecho el valor por defecto para ese parámetro para evitar tener que
# llamar a #tirar_dado dentro del cuerpo del método.
def mover_ficha(jugador)
 fichas[jugador]+= tirar_dado
 if fichas[jugador] > 40
   puts "Ganó #{jugador}!!"
   exit
 else
   puts "#{jugador} ahora está en el casillero #{fichas[jugador]}"
 end
end

loop do
 [:sacha, :seba, :rama].each { |jugador| mover_ficha(jugador) }
end
