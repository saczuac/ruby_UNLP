require 'minitest/autorun'
require 'minitest/spec'
require_relative 'ej7.rb'

describe '#opposite' do
    it 'cuando se usa false' do
      assert_equal(true, false.opposite)
      assert_equal(false, false.opposite.opposite)
    end
    it 'cuando se usa true' do
      assert_equal(false, true.opposite)
      assert_equal(true, true.opposite.opposite)
    end
end
