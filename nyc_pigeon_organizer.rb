

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


def nyc_pigeon_organizer(data)

  pigeon_list = {}
  #Set the keys
  data.each do |main_key, value_data|

    value_data.each do |sub_key, array_values|
        array_values.each do |name|
        if(pigeon_list.key?(name))
          pigeon_list[name][main_key] << sub_key.to_s
        else
          pigeon_list[name] = {
            color:[],
            gender:[],
            lives:[]
          }

          pigeon_list[name][main_key] << sub_key.to_s
        end
      end
    end
  end

  return pigeon_list

end

nyc_pigeon_organizer(pigeon_data)
