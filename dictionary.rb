class Dictionary



    def initialize
        @entries = {}
    end

    def entries
         return @entries
    end

    def keywords
      key_words = @entries.keys
      sorted_key_words = key_words.sort_by {|keyword| keyword}
    end

    def add(entry)
      if entry.class == Hash
        @entries.merge!(entry)
        return true
      elsif entry.class == String
        @entries[entry] = nil
        return true
      else
        return false
  end
  return @entries
end


    def include?(entry)
        if @entries.has_key?(entry)
            return true
        else
            return false
        end
    end

    def find(entry)
         results = {}
        @entries.select{ |key, value| key.include? entry }
    end



end
