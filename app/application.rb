class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.new
    time = time.hour
    if time >= 12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    resp.finish
  end

end
