require 'game'

RSpec.describe Game do
  it "will instantiate an instance of Display and return the intro message" do
    game = Game.new
    expect(game.display.intro).to eq("Welcome to Hangman")
  end

  it "will instantiate an instance of Word and return false when calling the solved? method" do
    game = Game.new
    expect(game.word.solved?).to eq(false)
  end

  it "will instantiate an instance of Lives and return 8 when accessing @lives" do
    game = Game.new
    expect(game.lives.lives).to eq(8)
  end

  it "will display the welcome message to players" do
    game = Game.new
    expect(game.display.intro).to eq("Welcome to Hangman")
  end

  it "will display the rules to players" do
    game = Game.new
    expect(game.display.game_rules).to eq(%Q(
      To win, you need to guess the mystery word or you die.
      You can have up to 8 incorrect guesses, before you're hanged.
      Let's begin!
      Guess a letter:
    ))
  end

  it "will return 'h' is correct when a letter is guessed" do
    game = Game.new
    expect(game.word.add_guess("h")).to eq("h is correct")
  end

end
