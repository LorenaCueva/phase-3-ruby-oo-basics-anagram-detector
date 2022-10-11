class Anagram
    attr_reader :word

    def initialize(word)
        @word = word
    end

    def sort_word(word)
        word.downcase.chars.sort
    end


    def match(arr)
        word_to_match = sort_word(@word)
        arr.select{|w| sort_word(w) == word_to_match}
    end
end