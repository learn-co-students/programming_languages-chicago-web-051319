def reformat_languages(languages)
  # your code here
  a = {}
  languages.each do |style , langs|
    langs.each do |langName , type|
      a[langName] = {}
      
      #iterate over the types and add them to "a"
      type.each do |typeKey , typeVal|
        a[langName][:type] = typeVal
      end
      
      a[langName][:style] = []
    end
  end
  
  languages.each do |style , langs|
    langs.each do |langName , type|
      a[langName][:style] << style
    end
  end
  
 # puts a[:javascript][:style]
  puts a[:javascript]
  return a
end


