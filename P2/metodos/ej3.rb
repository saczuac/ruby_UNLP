def ordenar_arreglo (*arreglo)
	arreglo.sort
end
entrada = [10, 9, 1, 2, 3, 5, 7, 8]
# El splat (*) te da todos los elementos del arreglo
puts ordenar_arreglo(*entrada)
