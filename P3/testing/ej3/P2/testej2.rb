require 'minitest/autorun'
require 'minitest/spec'
require_relative 'ej2.rb'

describe '#ordenar_arreglo' do
    it 'cuando se recibe un array para ordenar' do
      assert_equal([1,1,2,2,2,4,6,8], ordenar_arreglo(1,2,4,6,1,2,8,2))
      assert_equal(['chau','hola'], ordenar_arreglo('hola','chau'))
    end
    it 'cuando no se recibe un array' do
      assert_equal([nil],ordenar_arreglo(nil))
    end
    it 'cuando no se recibe nada' do
       assert_equal([], ordenar_arreglo ) 
    end
end
