require 'minitest/autorun'
require 'minitest/spec'
require_relative 'ej5.rb'

describe 'expansor' do
 # Casos de prueba con situaciones y/o entradas de datos esperadas
    describe 'Casos felices' do
        describe 'cuando la entrada es el string "a"' do
            it 'debe devolver "a"' do
                 assert_equal('a', expansor('a') )
            end
        end
        describe 'cuando la entrada es el string "f"' do
            it 'debe devolver "ffffff"' do
                assert_equal('ffffff', expansor('f') )
            end
        end
        describe 'cuando la entrada es el string "escoba"' do
            it 'debe devolver "eeeeessssssssssssssssssscccooooooooooooooobba"' do
                assert_equal('eeeeessssssssssssssssssscccooooooooooooooobba', expansor('escoba') )
            end
        end
    end
 # Casos de pruebas sobre situaciones inesperadas y/o entradas de datos anómalas
    describe 'Casos tristes' do
        describe 'cuando la entrada no es un string' do
            it 'debe disparar una excepción estándar con el mensaje "La entrada no es un string"' do
                 err = assert_raises (RuntimeError) { expansor(0) }
                 assert_match /La entrada no es un string/, err.message
            end
        end
        describe 'cuando la entrada es el string vacío' do
            it 'debe disparar una excepción estándar con el mensaje "El string es vacío"' do
                err = assert_raises (RuntimeError) { expansor("") }
                assert_match /El string es vacío/, err.message
            end
        end
        describe 'cuando la entrada es el string "9"' do
            it 'debe disparar un excepción estándar con el mensaje "El formato del string es incorrecto"' do
                err = assert_raises (RuntimeError) { expansor("9") }
                assert_match /El formato del string es incorrecto/, err.message
            end
        end
        describe 'cuando la entrada es el string "*"' do
            it 'debe disparar una excepción estándar con el mensaje "El formato del string es incorrecto"' do
                err = assert_raises (RuntimeError) { expansor("*") }
                assert_match /El formato del string es incorrecto/, err.message
            end
        end
    end
end
