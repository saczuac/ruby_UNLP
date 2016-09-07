# Incorporación de Módulos

## Include <hr>

Incluye los métodos definidos en el módulo como si fueran de instancia.

```ruby
module Foo
  def foo
    puts 'heyyyyoooo!'
  end
end

class Bar
  include Foo
end

Bar.new.foo # heyyyyoooo!
Bar.foo # NoMethodError: undefined method ‘foo’ for Bar:Class
```

## Extend <hr>

Incluye los métodos definidos en el módulo como si fueran de clase.


```ruby
class Baz
  extend Foo
end

Baz.foo # heyyyyoooo!
Baz.new.foo # NoMethodError: undefined method ‘foo’ for #<Baz:0x1e708>
```
