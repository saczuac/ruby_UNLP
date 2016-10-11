require 'minitest/autorun'
require 'minitest/spec'
require_relative 'ej1-bloques.rb'

describe '#da_nil?' do
    it 'cuando está vacío' do
      assert_equal(true, da_nil? do; end)
    end
    it 'cuando tiene elementos' do
      assert_equal(false, da_nil? do
                            'Algo distinto de nil'
                            end)
    end
end
