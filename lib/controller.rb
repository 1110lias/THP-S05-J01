require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index #sinatra recherche par défaut un fichier avec le bon nom dans views
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    puts "Salut, je suis dans le serveur"
    puts "Ceci est le contenu du hash params : #{params}"
    puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["gossip_author"]}"
    puts "De la bombe, et du coup ça, ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["gossip_content"]}"
    puts "Ça déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"
    puts "Sauvegarde des données fournies dans le HTML vers le CSV"
    Gossip.new.save(params["gossip_author"], params["gossip_content"])
    redirect '/'
  end

end