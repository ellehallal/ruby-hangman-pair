class Hangman
  def hangman

  end
end

class Words
  @@word_array = ["apple", "pear", "Avacado", "blackbery", "jackfruit", "kinder", "lychee", "guacamole"]

  def initialize
    @word = @@word_array.sample
  end

  def word
    @word.is_a? String
  end

end
