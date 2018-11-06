require 'hangman'

RSpec.describe Word do
  it "returns the guessed letters" do
    word = Word.new('hello')
    guessed_letters = word.guessed_letters
    expect(guessed_letters).to eq(['_'] * 5)
  end



end
