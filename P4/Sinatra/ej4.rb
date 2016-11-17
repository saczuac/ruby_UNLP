require 'bundler'

Bundler.require

set(:probability) do |value| 
  condition { rand(42) == value }
end

get '/', :probability => 42 do
  'Ganaste!'
end

get '/' do
  "No ganaste..."
end
