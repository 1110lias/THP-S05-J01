require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    #erb :index #sinatra recherche par défaut un fichier avec le bon nom dans views
    erb :index, locals: {gossips: Gossip.all} #modif avec renvoie de données
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).save 
    redirect '/'
  end

  get '/gossips/:id' do
    @gossip = Gossip.find(params[:id])
    if @gossip
      erb :show
    else
      "Ce potin n'existe pas!"
    end
  end

end