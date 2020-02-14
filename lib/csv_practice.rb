require 'csv'
require 'awesome_print'

def get_all_olympic_athletes(filename)
  return CSV.read(filename, headers: true).map(&:to_h)
  #  do |medalist|
  #   medalist.each do |info|
  #   end
end

def total_medals_per_team(olympic_data)

end

def get_all_gold_medalists(olympic_data)
end

#get_all_olympic_athletes("data/athlete_events.csv")
