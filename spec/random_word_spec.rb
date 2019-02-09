require 'random_word'

RSpec.describe RandomWord do
  it "returns a word at random" do
    random_word = RandomWord.new
    pick_word = random_word.pick_random_word
    expect(pick_word.length).to be_between(5, 10)
  end
end
