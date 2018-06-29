class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.new
    time = time.hour
    time >= 12 ? resp.write "Good Afternoon" : resp.write "Good Morning"
    resp.finish
  end

end
