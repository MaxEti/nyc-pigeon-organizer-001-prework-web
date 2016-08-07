def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, data|
    data.each do |attribute, array|
      array.each do |name|
        if !pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end

        if !pigeon_list[name].has_key?(key)
          pigeon_list[name][key] = []
        end

        if !pigeon_list[name][key].include?(attribute)
          pigeon_list[name][key] << attribute.to_s
        end
      end
    end
  end
  pigeon_list
end
