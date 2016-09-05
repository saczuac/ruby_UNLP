def cuanto_falta (time)
   ((time - Time.now) / 60).to_i.abs
end

puts "Faltan #{cuanto_falta(Time.new(2016,9,5,21,4,1))} minutos"
