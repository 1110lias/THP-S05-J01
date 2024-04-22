require'csv' #Ne fonctionne pas sans?

class Gossip
  def save(aaa,bbb)
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [aaa, bbb]
    end
  end
end

