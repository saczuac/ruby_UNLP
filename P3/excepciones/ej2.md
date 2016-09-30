# Raise vs Throw
<br><br>
## Raise y Rescue <br>

Se utiliza para levantar una excepción, puede ser anónima (por defecto se levanta como `RuntimeError`) o específicar alguna excepción existente en la jerarquía de clases de Exception.

```ruby
f = File.open("testfile")
begin
  # .. process
rescue
  # .. handle error
ensure
  f.close unless f.nil?
end
```
<br><br>
## Catch y Throw <br>

 `Catch` y `throw` te permite rápidamente salir de un bloque e ir atrás hacia un cierto punto donde un `catch` es definido por un `Symbol` específico. Es una especie de `goto`

```ruby
catch (:done)  do
  while gets
    throw :done unless fields = split(/\t/)
    songList.add(Song.new(*fields))
  end
  songList.play
end
```

`catch` define un bloque es taggeado con un `Symbol` determinado o un `String`. El bloque se ejecuta normalmente hasta que un `throw` sea lanzado.
