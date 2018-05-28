require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  data.each do |attribute, info|
    info.each do |type, names|
      names.each do |pigeon|
        if pigeon_hash[pigeon] == nil
          pigeon_hash[pigeon] = {}
        else
          pigeon_hash[pigeon].merge({attribute => []})
        end
        pigeon_hash[pigeon][attribute] = []
      end
    end
    info.each do |type, names|
      names.each do |pigeon|
        pigeon_hash[pigeon][attribute] << type.to_s
      end
    end
  end
  pigeon_hash
end