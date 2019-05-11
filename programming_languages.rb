require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}


  styles = languages.keys #contains styles
  new_lang = languages.values #contains all languages, but seperate


  languages.each do |style, langs|
    a = []

    a.push style

    # binding.pry

      langs.each do |k, v|
      v[:style] = a
      new_hash[k] = v
      # binding.pry

    end
  end
  new_hash
  # binding.pry
end






# {style{language{type{data}}}} aka languages
# should equal
#{language{type(data=string)}{style(data=array of symbols)}}
#

 def languages
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
end
