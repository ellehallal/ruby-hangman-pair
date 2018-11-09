class Display

  def initialize()
  end

  def game_rules
    print %Q(
        Welcome to Hangman!
        To win, you need to guess the mystery word or you die.
        You can have up to 8 incorrect guesses, before you're hanged.
        Let's begin!
    )
  end

  def winner
    print %Q(
      You've guessed the word correctly. You are a winner!
    )
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
