class Word
  def initialize(word)
    @word = word
  end

  def guessed_letters
    @word.split("").map do |letter|
      "_"
    end
    # ['_'] * 5
  end
end
