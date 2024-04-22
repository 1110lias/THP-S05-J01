require 'csv'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def self.highest_id
    highest_id = 0
    if File.exist?("./db/gossip.csv")
      CSV.foreach("./db/gossip.csv") do |row|
        current_id = row[0].to_i
        highest_id = current_id if current_id > highest_id
      end
    else
      puts "Le fichier CSV n'existe pas."
      return 0 # Retourner 0 si le fichier n'existe pas
    end
    highest_id
  end

  def save
    new_id = self.class.highest_id + 1 #Incrémentation pour ID différent
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [new_id, author, content]
    end
  end

  def self.all
    all_gossips = []
    if File.exist?("./db/gossip.csv")
      CSV.read("./db/gossip.csv").each do |csv_line|
        all_gossips << Gossip.new(csv_line[1], csv_line[2])
      end
    else
      puts "Le fichier CSV n'existe pas."
    end
    all_gossips
  end

  def self.find(argument_id)
    found_gossip = nil
    CSV.read("./db/gossip.csv").each do |csv_line|
      if csv_line[0] == argument_id 
        found_gossip = [csv_line[0], csv_line[1], csv_line[2]]
        break
      end
    end
    found_gossip
  end
  

end
