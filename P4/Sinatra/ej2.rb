require 'rack'
require 'rack/server'

class MoL
  def response
  	 if rand(2) == 1
  	 	[200, {}, ['Ganaste']]
  	 else 
  	 	[404, {}, ['No ganaste']]
  	 end
  end
end

class MoLApp
  def self.call(env)
    MoL.new.response
  end
end

Rack::Server.start :app => MoLApp