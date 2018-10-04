require 'sinatra'
require 'curb'
require 'json'

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

get '/cupcakes' do
  erb :cupcakes
end

get '/crumb' do
  erb :crumb
end

get '/pastries' do
  erb :pastries
end

get '/events' do
  @data = Curl::Easy.perform("https://www.eventbriteapi.com/v3/events/search/?q=baking&sort_by=-date&location.address=new+york+city&token=#{ENV['API_TOKEN']}")
  @req = JSON.parse(@data.body_str)
  erb :events
end

get '/about' do
  erb :about
end
