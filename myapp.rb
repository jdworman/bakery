require 'sinatra'

get '/' do
    'Hello world!'
  end

  get '/home' do
  erb :home
end

get '/index' do
  erb :index
end
