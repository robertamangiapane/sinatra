require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

get '/' do
  "hello!"
end

get '/secret' do
  "secret"
end

get '/secret/top_secret' do
  "top secret"
end

get '/hi' do
  "Hi!"
end

get '/shotgun' do
  "Shotgun"
end

get '/random-cat' do
  @names = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @names = params[:name]
  erb(:index)
end
