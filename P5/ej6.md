# Rails initializers

Los initializers de rails consisten en cargar todas las preferencias que se necesitan utilizar una vez que el ambiente es cargado.

Permiten definir:

+ Constantes que pueden ser utilizadas en todo el ambiente rails
+ *SMTP* settings
+ Custom monkeys patchings
+ etc...

Los cambios en los initializers no se reflejan automáticamente porque se ejecutan solo al iniciar el servidor.
