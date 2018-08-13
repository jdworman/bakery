require 'sinatra'

get '/' do
    erb :index
  end

get '/cookies' do
  erb :cookies
end

get '/cakes' do
  erb :cakes
end

get '/muffins' do
  erb :muffins
end

