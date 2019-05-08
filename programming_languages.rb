require 'pry'

def reformat_languages(languages)
  new_langugages = {}
  languages.each do |style, language|
    language.each do |type, status|
      new_langugages[type]||= status
      new_langugages[type][:style] = []
      new_langugages[type][:style] << style
end
end
new_langugages
end

#style == :oo && :functional
