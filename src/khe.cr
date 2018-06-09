require "./khe/*"
require "kemal"

module KHE

  get "/" do |env|
    env.redirect "index.html"
  end

  get "/hello/:name" do |env|
    "Hello #{env.params.url["name"]}"
  end

  get "/json" do |env|
    env.response.content_type = "application/json"
    {username: "asdf", clientID: 1234}.to_json
  end

  Kemal.run
end
