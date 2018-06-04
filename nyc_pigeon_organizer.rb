def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  
  data.each { |attribute, specification|
    
    specification.each {|property, names|
      
      names.each {|item|
        
        if organized_pigeons.key?(item) == FALSE
            organized_pigeons[item] = {}
        end
        
        if organized_pigeons[item].key?(attribute) == FALSE
            organized_pigeons[item][attribute] = []
        end
        
        organized_pigeons[item][attribute] << property.to_s
      }
    }
  }
  organized_pigeons
end

