class Hangman

  def hangman
    solution = Words.new.word
    solution.is_a? String

    life = Lives.new
    life.subtract_lives

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


class Lives
  def initialize
    @lives = 7
  end

  def lives
    @lives
  end

  def subtract_lives
    @lives -= 1
    self.lives
  end
end

class WrongGuess

  def initialize
    @incorrect = []
  end

  def wrong_guess
    @incorrect
  end

end
