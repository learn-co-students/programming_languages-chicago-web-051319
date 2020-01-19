def reformat_languages(languages)
  ##### doesn't merge duplicate languages #####
  # languages.each { |type|
  #   if type
  # }
  # oo = languages[:oo].each { |language, info| 
  #   info[:style] = [:oo]
  # }
  # functional = languages[:functional].each { |language, info| 
  #   info[:style] = [:functional]
  # }
  # oo.merge(functional)
  #########################
  
  formatted = {}
  languages.each { |style, language|
      language.each { |name, att|
          formatted[name] ? formatted[name][:style] << style : formatted[name] = {type: att[:type], style: [style]}
      }
  }
  formatted
end