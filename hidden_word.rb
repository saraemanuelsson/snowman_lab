class HiddenWord

    attr_reader :word

    def initialize(word)
        @word = word
    end

    def string_to_array(string)
        return string.split("")
    end

end