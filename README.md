# TTPS Opción Ruby <hr>

En este repositorio se encuentran ejercicios prácticos resueltos de la materia **Ruby** :diamonds:

+ Cada **práctica** tiene un :file_folder: para sus ejercicios
+ Utilizar estándares de codificación Ruby, los mismos son

### Variables de Instancia  <hr>

```ruby
@var
```

### Variables de Clase <hr>

```ruby
@@var
```

### Variables Globales <hr>

```ruby
$var
```

### Métodos <hr>

```ruby
def to_s (m = 0)
    m*2
end
```

### Clases <hr>

```ruby
class Person
   @@no_of_dogs=0
   def initialize(id, name)
        @p_id=id
        @p_name=name
    end
    def say_hello(name='Sacha')
        puts "Hello! #{name}"
    end
end 
```