require 'sinatra/base'

class App < Sinatra::Base
 get '/newteam' do 
   erb :newteam
 end

post '/team' do 
  @team = params 
  @normalized_key = []
   @team.each do |key,val|
    spliting = key.split("_")
    string = "" 
    string << spliting[0] if spliting[0]
    string << spliting[1] if spliting[1]
    @normalized_key  << string
  end
  erb :team
end
end
