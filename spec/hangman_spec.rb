require 'hangman'

RSpec.describe Word do
  it "returns the guessed letters" do
    word = Word.new('hello')
    # guessed_letters = word.guessed_letters
    expect(word.correct_guesses).to eq(["_"] * 5)
  end
  it "returns placeholders for different lengths of words" do
    word = Word.new('blackberry')
    # guessed_letters = word.guessed_letters
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

  it "displays 'already guessed, please try again' if user inputs letter previously guessed" do
    word = Word.new('hello')
    word.add_guess('s')
    word.add_guess('l')
    word.add_guess('s')
    expect(word.already_guessed).to eq("Already guessed, please try again.")
  end


end
