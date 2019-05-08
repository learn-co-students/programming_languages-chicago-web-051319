require 'pry'

def reformat_languages(languages)
  new_languages = {}
  languages.each do |style, language|
    language.each do |type, status|
      new_languages[type] ||= status
      new_languages[type][:style] ||= []
      new_languages[type][:style] << style
end
end
new_languages
end
