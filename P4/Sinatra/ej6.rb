require 'bundler'
require_relative 'my_middleware'
require_relative 'xcount_middleware'

Bundler.require

use Rack::Lint
use XCountMiddleware 
use MyMiddleware 


get '/' do
	'h3110 h0w 4r3 y0u?'
end

# Request trip before call
# --> XCountMiddleware --> MyMiddleware

# Request trip after call
# [status, headers, body] Response <-- XCountMiddleware <-- MyMiddleware

# Para hacer que se llame antes al XCountMiddleware después del llamado a call()
# simplemente cambiar el orden de los use Middleware
