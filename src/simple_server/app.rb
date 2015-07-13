require 'sinatra'
require 'json'
require 'securerandom'

server_id = SecureRandom.uuid

get '/' do
  name = 'Maria'
  
  "Hello, #{name} from #{server_id}"
end

get '/kill' do
  Process.kill 'TERM', Process.pid
end