def nyc_pigeon_organizer(data)
pigeon_list = {}

  data.each do |fkey, fval|
    fval.each do |skey, sval|
      sval.each do |names|
      pigeon_list[names] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
# sets up the new hash, with new keys
  x = pigeon_list.keys # make a list names

    data[:color].each do |color, name|
      name.each do |b_name|
        x.each do |i|
          if b_name === i
            pigeon_list[i][:color] << color.to_s
          end
        end
      end
    end
# inserts color into color key
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
    # inserts gender into gender key

  data[:lives].each do |location, name|
      name.each do |b_name|
        x.each do |i|
          if b_name === i
            pigeon_list[i][:lives] << location
          end
        end
      end
    end
    # inserts location into lives key

return pigeon_list
end
