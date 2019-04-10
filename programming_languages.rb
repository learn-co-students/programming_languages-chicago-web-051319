def reformat_languages(languages)
  combined = languages[:oo].merge(languages[:functional])
  languages[:functional].map do |k, v| 
    if combined.include?(k) 
    combined[k].merge!(:style => [:functional]) 
      end
    end  
  languages[:oo].map do |k, v| 
    if combined.include?(k) 
    combined[k].merge!(:style => [:oo]) 
      end
    end
  combined[:javascript][:style] << :functional
  combined
end

