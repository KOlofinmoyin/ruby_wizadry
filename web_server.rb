require 'webrick'
include WEBrick

  server = HTTPServer.new(Port: 3000)

  server.mount_proc '/' do |request, response|
    response.body = "Find your passion!!!"
  end

  server.mount_proc '/game' do |request, response |
      response.body = "Welcome to Street Fighter!"
  end

  trap('INT') { server.shutdown }
  server.start
