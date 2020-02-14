require 'csv'
require 'awesome_print'

def get_all_olympic_athletes(filename)
  all_medalists = []
  CSV.read(filename, headers: true).each do |medalist|
    # medalist is an instance of CSV::Row
    medalist = medalist.to_hash
    medalist.delete("Sex")
    medalist.delete("Age")
    medalist.delete("Weight")
    medalist.delete("NOC")
    medalist.delete("Games")
    medalist.delete("Season")
    all_medalists <<  medalist
    # { # keys need to be strings in that case we use => to assign value
    #   ID: medalist["ID"],
    #   Name: medalist["Name"],
    #   Height: medalist["Height"],
    #   Team: medalist["Team"],
    #   Year: medalist["Year"],
    #   City: medalist["City"],
    #   Sport: medalist["Sport"],
    #   Event: medalist["Event"],
    #   Medal: medalist["Medal"]
    # }
  end
  return all_medalists
end

def total_medals_per_team(olympic_data)

end

def get_all_gold_medalists(olympic_data)
end
