require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}


  languages.collect do |style, langs|
    a = []
    # binding.pry
    a.push style

      langs.each do |k, v|

      # v[:style] ||= a
      # binding.pry
      new_hash[k] ||= v
      new_hash[k][:style] ||= []
      new_hash[k][:style].push style
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
