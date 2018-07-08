def get_first_name_of_season_winner(data, season)
  # code here
  arr = data[season]
  arr.each do |con|
    return con["name"].split[0] if con["status"] == "Winner"
  end
  
end


def get_contestant_name(data, occupation)
  # code here
  data.each do |season_key, cons_arr|
    cons_arr.each do |con_hash|
      return con_hash["name"] if con_hash["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season_key, cons_arr|
    cons_arr.each do |con_hash|
      count += 1 if con_hash["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_key, cons_arr|
    cons_arr.each do |con_hash|
      return con_hash["occupation"] if con_hash["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0.0
  num = 0.0
  data.each do |season_key, cons_arr|
    cons_arr.each do |con_hash|
      sum += con_hash["age"].to_f
      num += 1.0
    end
  end
  (sum/num).ceil
end


