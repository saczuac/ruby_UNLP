# begin & rescue & else & ensure
<br><br>
### begin <br>

Se utiliza para declarar un bloque que puede llegar a generar una excepción
<br><br>
### rescue <br>

Se utiliza para cachear las excepciones levantadas en el bloque `begin`, pueden levantar excepciones específicas o no
<br><br>
### else <br>

Si no se levantó ninguna excepción se ejecuta el bloque `else`
<br><br>
### ensure <br>

Se utiliza dentro de un bloque `begin` para asegurar que siempre se va a ejecutar ese bloque aún cuando se levanten excepciones
<br><br>
### Ejemplo Integrador <br>


```ruby
begin
  eval string
rescue SyntaxError, NameError => boom
  print "String doesn't compile: " + boom
rescue StandardError => bang
  print "Error running script: " + bang
else
  print 'No error here'
ensure
  print 'Always print!'
end
```
