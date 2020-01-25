def nyc_pigeon_organizer(data)
pigeon_list = {}

  data.each do |fkey, fval|
    fval.each do |skey, sval|
      sval.each do |names|
      pigeon_list[names] = {:color => [], :gender => [], :lives => []}
      end
    end
  end

  x = pigeon_list.keys

    data[:color].each do |color, name|
      name.each do |b_name|
        x.each do |i|
          if b_name === i
            pigeon_list[i][:color] << color.to_s
          end
        end
      end
    end

    data[:gender].each do |type, name|
      name.each do |b_name|
        x.each do |i|
          if b_name === i
            pigeon_list[i][:gender] << type.to_s
            pp pigeon_list
          end
        end
      end
    end

  data[:lives].each do |location, name|
      name.each do |b_name|
        x.each do |i|
          if b_name === i
            pigeon_list[i][:lives] << location
          end
        end
      end
    end
return pigeon_list
end
