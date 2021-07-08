def nyc_pigeon_organizer(data)
  new_pigeons = {}
  data.each do |attributes, values|
    values.each do |keys_1, names_arrays|
      names_arrays.each do |name|
        if !new_pigeons[name]
          new_pigeons[name] = {}
        end
        if !new_pigeons[name][attributes]
          new_pigeons[name][attributes] = []
        end
        new_pigeons[name][attributes].push(keys_1.to_s)
      end
    end
  end
  pp new_pigeons
end
