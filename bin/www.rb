#!/usr/bin/env ruby

require 'webrick'
port = ARGV.first.to_i
port = 1234 if port == 0
server = WEBrick::HTTPServer.new :Port => port
server.mount "/", WEBrick::HTTPServlet::FileHandler, './'
trap('INT') { server.stop }
server.start
