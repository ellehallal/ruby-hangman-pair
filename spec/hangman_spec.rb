require 'hangman'

describe 'hangman' do
  game = Hangman.new
  # it 'returns a string @@word_array in Words class' do
  #   expect(game.hangman).to eq true
  # end
  # it 'returns 7 lives to user' do
  #   expect(game.hangman).to eq life
  # end

  word = Words.new
  it 'returns a word from the @@word_array' do
    expect(word.word).to eq is_a? String
  end


  life = Lives.new
  it 'subtracts 1 life when guess is incorrect' do
    expect(life.subtract_lives).to eq 6
  end


  wrong = WrongGuess.new
  it 'it will return an empty array' do
    expect(wrong.wrong_guess).to eq []
  end





end




# describe 'hangman' do
#   it 'returns hi' do
#     expect(hangman).to eq 'hi'
#   end
# end
