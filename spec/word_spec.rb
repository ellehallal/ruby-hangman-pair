require 'word'

RSpec.describe Word do
  it "returns the guessed letters" do
    word = Word.new('hello')
    expect(word.correct_guesses).to eq(["_"] * 5)
  end
  it "returns placeholders for different lengths of words" do
    word = Word.new('blackberry')
    expect(word.correct_guesses).to eq(['_'] * 10)
  end

  it "adds a letter to correct_guesses" do
    word = Word.new('hello')
    word.add_guess('h')
    expect(word.correct_guesses).to eq(['h', '_', '_', '_', '_'])
  end

  it "adds another correct letter to correct_guesses" do
    word = Word.new('hello')
    word.add_guess('h')
    word.add_guess('e')
    expect(word.correct_guesses).to eq(['h', 'e', '_', '_', '_'])
  end

  it "letter is not added to correct_guesses if not present in the word" do
    word = Word.new('hello')
    word.add_guess('h')
    word.add_guess('e')
    word.add_guess('l')
    word.add_guess('m')
    expect(word.correct_guesses).to eq(['h', 'e', 'l', 'l', '_'])
  end

  it "stores incorrect guess in incorrect_guesses" do
    word = Word.new('hello')
    word.add_guess('h')
    word.add_guess('e')
    word.add_guess('l')
    word.add_guess('m')
    expect(word.incorrect_guesses).to eq(['m'])
  end

  it "compares correct_guesses to the word and returns true if they're equal" do
    word = Word.new('hello')
    word.add_guess('e')
    word.add_guess('h')
    word.add_guess('o')
    word.add_guess('l')
    expect(word.solved?).to eq(true)
  end

  it "displays user's incorrect_guesses as a string" do
    word = Word.new('hello')
    word.add_guess('k')
    word.add_guess('b')
    word.add_guess('o') #correct guess
    word.add_guess('m')
    expect(word.display_incorrect_guesses).to eq("k b m")
  end

  it "displays user's correct_guesses as a string" do
    word = Word.new('hello')
    word.add_guess('s')
    word.add_guess('l') #correct guess
    word.add_guess('o') #correct guess
    word.add_guess('j')
    expect(word.display_correct_guesses).to eq("_ _ l l o")
  end

  # it "displays 'already guessed, please try again' if user inputs letter previously guessed" do
  #   word = Word.new('hello')
  #   word.add_guess('s')
  #   word.add_guess('m')
  #   word.add_guess('l')
  #   word.add_guess('o')
  #   expect(word.add_guess('s')).to eq("Already guessed, please try again.\n Incorrect guesses: \ns m\nCorrect guesses:\n_ _ l l o")
  # end

  it  "will return 8 lives" do
    word = Word.new('hello')
    expect(word.lives).to eq(8)
  end

  # it  "will return 7 lives and k as the incorrect guess" do
  #   word = Word.new('hello')
  #   word.add_guess('h')
  #   expect(word.add_guess('k')).to eq("You have 7 guesses left.\n Here are your incorrect guesses: \nk\n Here are your correct guesses: \nh _ _ _ _")
  # end

  # it "will return h as a correct guess when user guesses correctly" do
  #   word = Word.new('hello')
  #   expect(word.add_guess('h')).to eq("That's correct! Here are your correct guesses: \nh _ _ _ _")
  # end
end
