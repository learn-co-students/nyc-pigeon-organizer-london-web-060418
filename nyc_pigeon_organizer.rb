require 'pry'

def add_attribute_to_hash(pigeon_hash, attribute, value)
  if pigeon_hash[attribute]
    pigeon_hash[attribute] << value.to_s
  else
    pigeon_hash[attribute] = []
    pigeon_hash[attribute] << value.to_s
  end
end

def nyc_pigeon_organizer(data)
  
  pigeon_list = Hash.new
  data.each do |attribute, values|
    values.each do |value, names|
      names.each do |name|
        if pigeon_list[name]
          add_attribute_to_hash(pigeon_list[name], attribute, value)
        else
          pigeon_list[name] = {}
          add_attribute_to_hash(pigeon_list[name], attribute, value)
        end
      end
    end
  end
  #binding.pry 
  
  return pigeon_list
end