# TTPS Opción Ruby

En este repositorio se encuentran ejercicios prácticos resueltos de la materia **Ruby** :diamonds:

+ Cada **práctica** tiene un :file_folder: para sus ejercicios
+ Utilizar estándares de codificación Ruby, los mismos son: 
   ### Variables de Instancia: 
    ```
          @var
     ```
   ### Variables de Clase: 
    ```
          @@var
     ```
   ### Variables Globales: 
    ```
          @var
     ```
   ### Métodos: 
    ```
          def to_s (m = 0)
             m*2
          end
     ```
   ### Clases: 
    ```
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