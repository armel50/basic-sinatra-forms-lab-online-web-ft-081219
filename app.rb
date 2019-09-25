require 'sinatra/base'

class App < Sinatra::Base
 get '/newteam' do 
   erb :newteam
 end

post '/team' do 
  @team = params 
  @normalized_key = []
   
  erb :team
end
end
