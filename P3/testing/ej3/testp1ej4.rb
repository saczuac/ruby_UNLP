require 'minitest/autorun'
require 'minitest/spec'
require_relative 'p1ej4.rb'

describe '#to_hour' do
    it 'cuando se recibe un número fuera del rango' do
      assert_equal(' no sé ', to_hour(13))
      assert_equal(' no sé ', to_hour('gil'))
    end
    it 'cuando se recibe un número dentro del rango' do
      assert_equal('doce', to_hour(12))
      assert_equal('doce', to_hour(00))
    end
end

describe '#to_minutes' do
    it 'cuando se recibe un número fuera del rango' do
      assert_equal('no sé', to_minutes(88))
      assert_equal('no sé', to_minutes('gil'))
    end
    it 'cuando se recibe un número dentro del rango' do
      assert_equal('en punto', to_minutes(8))
      assert_equal('y media', to_minutes(30))
    end
    it 'cuando no se manda nada' do
      assert_raises(ArgumentError) { to_minutes }
    end
end

describe '#in_words' do
    it 'cuando se recibe una hora incorrecta' do
      assert_raises(NoMethodError) { in_words(88) }
    end
    it 'cuando se manda una hora' do
        assert_equal('Son las dos en punto', in_words(Time.new(2002, 10, 31, 2)))
        assert_equal('Son las tres en punto', in_words(Time.new(2002, 10, 31, 3)))
        assert_equal('Son las tres y cuarto', in_words(Time.new(2002, 10, 31, 3, 20)))
        assert_equal('Son las cinco menos cuarto', in_words(Time.new(2002, 10, 31, 4, 45)))
        assert_equal('Son las dos y media', in_words(Time.new(2002, 10, 31, 2, 33)))
    end
end
