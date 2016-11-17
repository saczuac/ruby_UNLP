require 'bundler'
require_relative 'ahorcado'

Bundler.require

list = [Ahorcado.new('camaleon'), Ahorcado.new('vainilla'), Ahorcado.new('anodado')]

post '/' do
	# iniciando una partida
	redirect "/#{rand(0..2)}"
end

get '/:id' do |id|
	list[id.to_i].estado
end

post '/:id/:letter' do |id, letter|
	list[id.to_i].intenta_adivinar(letter)
	if list[id.to_i].intentos > 3
		 list[id.to_i].reset
		'Perdiste ! ' + " \n ---------------------" + "\n |                     |" + "\n |                     |" + "\n |                  -------" + "\n |                 | X  X  |" + "\n |                 |   o   |" + "\n |                  -------" + "\n |                     |   " + "\n |                   / | \\ " + "\n |                  /  |   \\ " + "\n |                 /   |     \\ " + "\n |                     |   " + "\n |                    / \\" + "\n |                   /   \\  " + "\n |                  /     \\ "
    else 
		list[id.to_i].estado + "\n Intentos => " + list[id.to_i].intentos.to_s
	end
end