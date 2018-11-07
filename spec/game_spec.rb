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

end
