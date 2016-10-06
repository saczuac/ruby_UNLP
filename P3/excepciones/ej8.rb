def fun3
 puts "Entrando a fun3"
 raise RuntimeError, "Excepción intencional"
 puts "Terminando fun3"
 rescue NoMethodError => e
   puts "Tratando excepción por falta de método"
 rescue RuntimeError => e
   puts "Tratando excepción provocada en tiempo de ejecución"
 rescue
   puts "Tratando una excepción cualquiera"
 ensure
   puts "Ejecutando ensure de fun3"
end

def fun2(x)
 puts "Entrando a fun2"
 fun3
 a = 5 / x
 puts "Terminando fun2"
end

def fun1(x)
 puts "Entrando a fun1"
 fun2 x
 rescue
   puts "Manejador de excepciones de fun1"
   raise
 ensure
   puts "Ejecutando ensure de fun1"
end

begin
   x = 0
   begin
     fun1 x
   rescue Exception => e
     puts "Manejador de excepciones de Main"
     if x == 0
       puts "Corrección de x"
       x = 1
       retry
     end
   end
   puts "Salida"
end

# 2)  Si se permuta dentro de fun3 con el manejador de excepciones genéricos siempre va a ejecutar el rescue genérico y nunca el rescue de RuntimeError
# 3) Retry vuelve a ejecutar el bloque begin más próximo, si se pone el x = 0 adentro del otro begin se generaria un loop infinito.
