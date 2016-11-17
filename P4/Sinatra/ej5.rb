require 'bundler'
require 'sinatra/advanced_routes'

Bundler.require

helpers do
  def mcm(a, b)
   	a.to_i.lcm(b.to_i)
  end
  def mcd(a, b)
  	a.to_i.gcd(b.to_i)
  end
end

get '/mcm/:a/:b' do
	"Lowest common multiple of #{params['a']} and #{params['b']} is => " + mcm(params['a'], params['b']).to_s
end

get '/mcd/:a/:b' do
	"Max common divisor of #{params['a']} and #{params['b']} is => " + mcd(params['a'], params['b']).to_s
end

get '/sum/*' do |path| 
	'La sumatoria es => ' + path.split('/').map(&:to_i).inject(:+).to_s
end

get '/even/*' do |path| 
	"Los pares son: \n " + path.split('/').map(&:to_i).select(&:even?).to_s
end

post '/random' do
	rand.to_s
end

post '/random/:lower/:upper' do |lower, upper|
	rand(lower.to_i..upper.to_i).to_s
end

get '/' do 
	s = "The avaibles routes are: \n"
	Sinatra::Application.each_route {|r| s << r.verb + " " + r.path + "\n"}
	s
end