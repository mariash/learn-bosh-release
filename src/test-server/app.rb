require 'sinatra'

get '/' do
  'Hello, Maria'
end

get '/fail' do
  exit 1
end