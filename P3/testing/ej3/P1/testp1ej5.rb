require 'minitest/autorun'
require 'minitest/spec'
require_relative 'ej5.rb'

describe '#contar' do
   describe 'cuando se recibe un string' do
    it 'cuando se recibe un substring que se incluye n veces en el string' do
      assert_equal(3, contar('hola como hola estas hola','hola'))
      assert_equal(1, contar('- tenes hora?. - Se dice hola primero.','hola'))
    end
    it 'cuando se recibe un substring que no se incluye en el string' do
      assert_equal(0, contar('hola como hola estas hola','chau'))
    end
   end
   describe 'cuando no se recibe bien los parámetros' do
    it 'cuando no se recibe nada' do
      assert_raises(ArgumentError) { contar }
    end
    it 'cuando se recibe sólo un parámetro' do
      assert_raises(ArgumentError) { contar('capo') }
    end
    it 'cuando no se recibe un string' do
      assert_raises(NoMethodError) { contar(nil, 'nil') }
    end
   end
end
