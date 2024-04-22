require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index #sinatra recherche par défaut un fichier avec le bon nom dans views
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    puts "Sauvegarde des données fournies dans le HTML vers le CSV"
    Gossip.new.save("super_auteur2", "super go444ssip")
  end

end