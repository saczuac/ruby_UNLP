class MyMiddleware
  
  def initialize(app)
    @app = app
  end

  def call(env)
    # before the  call
    status, headers, body  = @app.call(env) #call..
    # after the  call
    # Transform the returned value(s)
    # Remember the body is an Array
     replaced_body = body.map { |c| c.gsub(/\d/,'X') }

    # Return the newly filtered response
    [status, headers, replaced_body]
  end
end