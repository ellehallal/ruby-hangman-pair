require 'hangman'

RSpec.describe Word do
  it "returns the guessed letters" do
    word = Word.new('hello')
    # guessed_letters = word.guessed_letters
    expect(word.correct_guesses).to eq(["_"] * 5)
  end
  it "returns empty letters for different lengths of words" do
    word = Word.new('blackberry')
    # guessed_letters = word.guessed_letters
    expect(word.correct_guesses).to eq(['_'] * 10)
  end

  it "adds a letter to to the current word" do
    word = Word.new('hello')
    word.add_guess('h')
    expect(word.correct_guesses).to eq(['h', '_', '_', '_', '_'])
  end

  it "adds another letter to the current word" do
    word = Word.new('hello')
    word.add_guess('h')
    word.add_guess('e')
    expect(word.correct_guesses).to eq(['h', 'e', '_', '_', '_'])
  end

  it "discards letter if not present in the word" do
    word = Word.new('hello')
    word.add_guess('h')
    word.add_guess('e')
    word.add_guess('l')
    word.add_guess('m')
    expect(word.correct_guesses).to eq(['h', 'e', 'l', 'l', '_'])
  end

  it "stores incorrect guess in new array" do
    word = Word.new('hello')
    word.add_guess('h')
    word.add_guess('e')
    word.add_guess('l')
    word.add_guess('m')
    expect(word.incorrect_guesses).to eq(['m'])
  end

  it "compares correct guesses to the word and returns true if they're equal" do
    word = Word.new('hello')
    word.add_guess('e')
    word.add_guess('h')
    word.add_guess('o')
    word.add_guess('l')
    expect(word.guesses_equal_to_word).to eq(true)
  end



end
