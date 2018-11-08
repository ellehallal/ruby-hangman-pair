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
    expect(game.play).to eq("Welcome to Hangman")
  end

end
