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
      Guess a letter:
    )
  end
end
