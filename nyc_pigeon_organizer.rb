def nyc_pigeon_organizer(data)

  final_results = data.each_with_object ({}) do |(key, value), final_array|

      value.each do |inner_key, names|
        names.each do |name|
            if !final_results [name]
            final_results[name] = {}
            end 
            if !final_results [name][key]
              final_results[name][key] = name 
            end 
            final_array[name][key].push (inner_key.to.s)
        end 
    end 
  end 
end
