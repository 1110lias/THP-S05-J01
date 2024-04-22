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

end