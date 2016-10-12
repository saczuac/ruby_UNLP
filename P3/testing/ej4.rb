require 'minitest/autorun'
require 'minitest/spec'
require_relative 'ej4-countable.rb'

describe Countable do
    class String
    # Incluyo el Mixin
        include Countable
        count_invocations_of :capitalize
    end
    describe 'cuando se prueba en una clase existente' do
        describe '#invoked?' do
            s = String.new 'Hola'
            it 'cuando no se invocó nunca' do
                assert_equal(false, s.invoked?(:capitalize))
            end
            it 'cuando se invocó alguna vez' do
                s.capitalize
                assert_equal(true, s.invoked?(:capitalize))
            end
            it 'cuando no se manda parámetro' do
                assert_raises(ArgumentError) { s.invoked? }
            end
        end
        describe '#invoked' do
            s = String.new 'Hola'
            it 'cuando no se invocó alguna vez' do
                assert_equal(0, s.invoked(:capitalize))
            end
            it 'cuando se invocó alguna vez' do
                s.capitalize
                assert_equal(1, s.invoked(:capitalize))
            end
            it 'cuando no se manda parámetro' do
                assert_raises(ArgumentError) { s.invoked }
            end
        end
    end
    describe 'cuando se prueba en un mock' do
        class Greeter
        # Incluyo el Mixin
            include Countable

            def hi
                puts 'Hey!'
            end
            def bye
                puts 'See you!'
            end
            # Indico que quiero llevar la cuenta de veces que se invoca el método #hi
            count_invocations_of :hi
        end
        describe '#invoked?' do
            a = Greeter.new
            it 'cuando no se invocó nunca' do
                assert_equal(false, a.invoked?(:hi))
            end
            it 'cuando se invocó alguna vez' do
                a.hi
                assert_equal(true, a.invoked?(:hi))
            end
            it 'cuando no se manda parámetro' do
                assert_raises(ArgumentError) { a.invoked? }
            end
        end
        describe '#invoked' do
            b = Greeter.new
            it 'cuando no se invocó alguna vez' do
                assert_equal(0, b.invoked(:hi))
            end
            it 'cuando se invocó alguna vez' do
                b.hi
                assert_equal(1, b.invoked(:hi))
            end
            it 'cuando no se manda parámetro' do
                assert_raises(ArgumentError) { b.invoked }
            end
        end
    end
end
