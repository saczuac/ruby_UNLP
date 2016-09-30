# Retry

Sirve para poder volver a ejecutar un bloque `begin`, es muy factible caer en loops infinitos si no se los trata adecuadamente.

```ruby
begin
   do_something # exception raised
rescue
   # handles error
   retry  # restart from beginning
end
```

**Evitando** un *loop infinito*:

```ruby
tries = 0
begin
  # some routine
rescue
  tries += 1
  retry if tries <= 3
  puts "no dice!"
end
```
