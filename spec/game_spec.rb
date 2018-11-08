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
    expect(game.word.lives).to eq(8)
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
    
    ))
  end

  it "will return 'h' is correct when a letter is guessed" do
    game = Game.new
    expect(game.word.add_guess("h")).to eq("That's correct! Here are your correct guesses: \nh _ _ _ _")
  end

  it  "will return 7 lives and k as the incorrect guess" do
    game = Game.new
    game.word.add_guess('h')
    expect(game.word.add_guess('k')).to eq("You have 7 guesses left.\n Here are your incorrect guesses: \nk\n Here are your correct guesses: \nh _ _ _ _")
  end

  it "will return winner message" do
    game = Game.new
    game.word.add_guess('h')
    game.word.add_guess('e')
    game.word.add_guess('l')
    game.word.add_guess('o')
    expect(game.winner).to eq("You guessed the word hello correctly. You are a winner!")
  end


end
