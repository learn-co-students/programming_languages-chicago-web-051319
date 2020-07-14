def reformat_languages(languages)
  new_hash = {} 
  languages.each do |style, data| 
          #(style is either oo or functional)
    data.each do |lang_name, types| 
          #lang_name = ruby, javascript, python, java; OR clojure, erlang, scala, javascript 
          # type = interpreted or compiled, 
       if new_hash[lang_name] == nil
          new_hash[lang_name] = types
          new_hash[lang_name][:style] = []
        end
        new_hash[lang_name][:style] << style
    end
  end
  new_hash
end
