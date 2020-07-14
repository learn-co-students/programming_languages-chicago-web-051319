def reformat_languages(languages)
  language_attributes = {}
  languages.each do |oo_or_functional, language_hash|
    language_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, str_value|
        if language_attributes[language].nil?
          language_attributes[language] = {}
        end  
        language_attributes[language][:style] ||= []  
        language_attributes[language][:style] << oo_or_functional
        if language_attributes[language][attribute].nil? 
          language_attributes[language][attribute] = str_value
        end
      end
    end
  end
  language_attributes
end



# languages will take place of the oo_or_functional layer, type and style will become part of the 
# where languages were, style being a new symbol that must be created, and the functional or oo 
# symbols will be become values of the style keys

  
  

