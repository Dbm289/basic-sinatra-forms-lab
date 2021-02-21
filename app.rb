require 'sinatra/base'

class App < Sinatra::Base
    get '/newteam' do
        erb :newteam
    end

    get '/team' do
        erb :team
    end

    post '/newteam' do
        @team = Team.find_by_id(params[:id])
        erb :newteam
        
    end



end
