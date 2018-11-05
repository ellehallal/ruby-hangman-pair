class Hangman

  def hangman
    solution = Words.new.word
    solution.is_a? String

  end
end

class Words
  @@word_array = ["apple", "pear", "Avacado", "blackbery", "jackfruit", "kinder", "lychee", "guacamole"]

  def initialize
    @word = @@word_array.sample
  end

  def word
    @word
  end

end
