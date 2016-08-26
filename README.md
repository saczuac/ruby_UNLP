# TTPS Opción Ruby

En este repositorio se encuentran ejercicios prácticos resueltos de la materia **Ruby** :diamonds:

+ Cada práctica tiene un :folder: para sus ejercicios
+ Utilizar estándares de codificación Ruby, los mismos son: 
   + Variables de Instancia: 
    ```ruby
          @var
     ```
    + Variables de Clase: 
    ```ruby
          @@var
     ```
    + Variables Globales: 
    ```ruby
          @var
     ```
    + Métodos: 
    ```ruby
          def to_s (m = 0)
             m*2
          end
     ```
    + Clases: 
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