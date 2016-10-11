require 'minitest/autorun'
require 'minitest/spec'
require_relative 'ej9.rb'

describe '#longitud' do
    it 'cuando se recibe un arreglo de n strings' do
        assert_equal( [4,3,4], longitud(['hola','que','raro']))
    end
    it 'cuando no se recibe nada' do
      assert_raises(ArgumentError) { longitud }
    end
    it 'cuando no se recibe un arreglo' do
      assert_raises(NoMethodError) { longitud(nil) }
    end
end
