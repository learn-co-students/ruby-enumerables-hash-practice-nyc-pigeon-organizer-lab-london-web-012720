def nyc_pigeon_organizer(data)
  new_hash = {} #making a new hash 
  data.each do |key, value| 
    value.each do |new_value, names|
      names.each do |name|
        
        if !new_hash[name]
          new_hash[name] = {}
        end

        if !new_hash[name][key]
          new_hash[name][key] = []
        end

        new_hash[name][key] << new_value.to_s #converting new value into a string and shovelling it into the new hash 

      end
    end
  end
  new_hash
end