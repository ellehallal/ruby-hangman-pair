class Display
  # attr_reader :intro

  def initialize(intro="Welcome to Hangman")
    @intro = intro
  end

  def welcome
    print @intro
  end

  def game_rules
    print %Q(
      To win, you need to guess the mystery word or you die.
      You can have up to 8 incorrect guesses, before you're hanged.
      Let's begin!
    )
  end

  def winner
    print "You guessed the word correctly. You are a winner!"
  end

  def loser
    print %Q(
      You have run out of lives. You're dead!
      You're a loser.
      The game is over.
    )
  end

  def guess_letter
    print %Q(
      Guess a letter
      >
    )
  end

  def play_again
    print %Q(
      Guess a letter
      >
    )
  end

end
