require 'hangman'

describe 'hangman' do
  game = Hangman.new
  it 'returns true when checking if word is an array' do
    expect(game.hangman).to eq true
  end
end


# describe 'hangman' do
#   it 'returns hi' do
#     expect(hangman).to eq 'hi'
#   end
# end
