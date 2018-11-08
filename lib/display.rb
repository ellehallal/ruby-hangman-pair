class Display
  attr_reader :intro

  def initialize(intro="Welcome to Hangman")
    @intro = intro
  end

  def game_rules
    %Q(
      To win, you need to guess the mystery word or you die.
      You can have up to 8 incorrect guesses, before you're hanged.
      Let's begin!
    )
  end

  def winner
    "You guessed the word correctly. You are a winner!"
  end

  def loser
    %Q(
      You have run out of lives. You're dead!
      You're a loser.
      The game is over.
    )
  end

  def guess_letter
    puts "Guess a letter"
    print "> "
  end

end
