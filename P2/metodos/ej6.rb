# Tira un dado virtual de 6 caras
def tirar_dado
 rand 1..6
end
# Mueve la ficha de un jugador tantos casilleros como indique el dado en un tablero virtual de 40 posiciones.
# Si no se recibe la cantidad de casilleros, aprovecho el valor por defecto para ese parámetro para evitar tener que
# llamar a #tirar_dado dentro del cuerpo del método.
def mover_ficha(fichas, jugador, casilleros = tirar_dado)
 fichas[jugador]+= casilleros
 if fichas[jugador] > 40
   puts "Ganó #{jugador}!!"
   true
 else
   puts "#{jugador} ahora está en el casillero #{fichas[jugador]}"
   false
 end
end

posiciones = { sacha: 0, seba: 0, rama: 0 }
finalizado = false



until finalizado
 [:sacha, :seba, :rama].each { |jugador|
   finalizado = mover_ficha(posiciones, jugador)
   if finalizado 
     break
   end
 }
end
