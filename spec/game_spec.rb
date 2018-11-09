require 'game'

RSpec.describe Game do

  it "will instantiate an instance of Word and return false when calling the solved? method" do
    game = Game.new
    expect(game.word.solved?).to eq(false)
  end

  it "will instantiate an instance of Lives and return 8 when accessing @lives" do
    game = Game.new
    expect(game.word.lives).to eq(8)
  end

end
