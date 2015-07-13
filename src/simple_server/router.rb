require 'sinatra'
require 'json'

config = JSON.load(File.read(ENV.fetch("CONFIG_FILE")))
servers = config["servers"]

unless servers.size > 0
  raise "At least one server must be provided"
end 

get '/' do
  picked_server = servers.sample
  redirect picked_server
end

