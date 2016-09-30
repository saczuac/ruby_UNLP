# Jerarquía de clases de Excepciones en Ruby
```ruby
Exception
 NoMemoryError
 ScriptError
   LoadError
   NotImplementedError
   SyntaxError
 SignalException
   Interrupt
 StandardError
   ArgumentError
   IOError
     EOFError
   IndexError
   LocalJumpError
   NameError
     NoMethodError
   RangeError
     FloatDomainError
   RegexpError
   RuntimeError
   SecurityError
   SystemCallError
   SystemStackError
   ThreadError
   TypeError
   ZeroDivisionError
 SystemExit
 fatal
 ```
<br><br>
## IOError <br>

Suceden cuando una operación de `IO` falla.

```ruby
File.open("/etc/hosts") {|f| f << "example"}
  #=> IOError: not opened for writing

File.open("/etc/hosts") {|f| f.close; f.read }
  #=> IOError: closed stream
```
<br><br>
## NameError <br>

Suceden cuando un nombre dado es inválido o no está definido.

```ruby
puts foo #=> NameError: undefined local variable or method `foo' for main:Object
```
<br><br>
## RuntimeError <br>

Es una clase de Error genérica lanzada cuando una operación inválida es realizada

```ruby
[1, 2, 3].freeze << 4 #=> RuntimeError: can't modify frozen array

Kernel#raise will raise a RuntimeError if no Exception class is specified.

raise "ouch" #=> RuntimeError: ouch
```
<br><br>
## NotImplementedError <br>

Se lanzan cuando una funcionalidad no está implementada en la plataforma actual que se está utilizando. Por ejemplo los métodos `fsync` y `fork` podrían lanzar esta excepción si el sistema operativo subyacente o `Ruby Runtime` no soportan estas operaciones.

## StopIteration <br>

Es una excepción que se lanza para terminar una iteración, es cacheada por un `rescue` definido en la `Kernel#loop`

```ruby
loop do
  puts "Hello"
  raise StopIteration
  puts "World"
end
puts "Done!"

#=> Produces :
 Hello
 Done!
```
<br><br>
## TypeError <br>

Se lanzan cuando se encuentra un objeto que no es del tipo esperado.

```ruby
[1, 2, 3].first("two") #=> TypeError: no implicit conversion of String into Integer
```
<br><br>
## SystemExit <br>

Excepción lanzada por la sentencia `exit`, para terminar la ejecución del script.
