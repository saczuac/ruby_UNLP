# TTPS Opción Ruby 
<br>
En este repositorio se encuentran ejercicios prácticos resueltos de la materia `Ruby` . Cada práctica tiene un :file_folder: para sus ejercicios
<br><br>

## Prácticas 

+ [Práctica 1](https://github.com/saczuac/ruby_UNLP/tree/master/P1) :white_check_mark:
+ [Práctica 2](https://github.com/saczuac/ruby_UNLP/tree/master/P2) :white_check_mark:
+ [Práctica 3](https://github.com/saczuac/ruby_UNLP/tree/master/P3) :white_check_mark:
+ [Práctica 4](https://github.com/saczuac/ruby_UNLP/tree/master/P4) :white_check_mark:
+ [Práctica 5](https://github.com/saczuac/ruby_UNLP/tree/master/P5) :white_check_mark:

<br><br>
## Estándares de codificación **Ruby** 


### Variables de Instancia  

```ruby
@var
```

### Variables de Clase 

```ruby
@@var
```

### Variables Globales 

```ruby
$var
```

### Métodos 

```ruby
def to_s (m = 0)
    m*2
end
```

### Clases 

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
