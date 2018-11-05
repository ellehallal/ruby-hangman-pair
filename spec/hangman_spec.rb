require 'hangman'

describe 'hangman' do
  game = Hangman.new
  # it 'returns a string @@word_array in Words class' do
  #   expect(game.hangman).to eq true
  # end
  # it 'returns 7 lives to user' do
  #   expect(game.hangman).to eq life
  # end
  it 'subtracts 1 life when guess is incorrect' do
    expect(game.hangman).to eq 6
  end





end




# describe 'hangman' do
#   it 'returns hi' do
#     expect(hangman).to eq 'hi'
#   end
# end
