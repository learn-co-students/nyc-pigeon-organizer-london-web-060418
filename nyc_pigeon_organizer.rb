require 'pry'

def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {}
  pigeon_data.each do |categories, details|
    #categories = color, gender, lives
    #details = details of categories
     details.each do |value, names|
       names.each do |name|
       #value = types of colors, m/f, nyc areas
       #names = pidge names
       if pigeon_list[name] == nil
         pigeon_list[name] = {}
         pigeon_list[name][categories] = []
       elsif pigeon_list[name][categories] == nil
         pigeon_list[name][categories] = []
       end
       binding.pry
       pigeon_list[name][categories] << value.to_s
     end
   end
 end
  pigeon_list
end
