require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data[:gender].each do |key,val|
    val.each do |name|
      place = []
      color = []
      
      data[:lives].each do |key2,val2|
        if val2.include?(name)
          place.push(key2.to_s)
        end
      end 
      
      data[:color].each do |key3,val3|
        if val3.include?(name)
          color.push(key3.to_s)
        end
      end 
      
      
      pigeon_list[name] = {gender: [key.to_s], lives: place, color: color }
    end  
  end
  puts pigeon_list
  pigeon_list
  #binding.pry
end