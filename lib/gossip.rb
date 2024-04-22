require 'csv'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end
  
  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = []
    if File.exist?("./db/gossip.csv")
      CSV.read("./db/gossip.csv").each do |csv_line|
        all_gossips << Gossip.new(csv_line[0], csv_line[1])
      end
    else
      puts "Le fichier CSV n'existe pas."
    end
    all_gossips
  end
end
