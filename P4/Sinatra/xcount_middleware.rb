class XCountMiddleware

	def initialize(app)
		@app = app
	end

	def call(env)
		status, headers, body = @app.call(env)
		headers['X-Xs-Count'] = body.to_s.count('X').to_s
		[status, headers, body]
	end

end