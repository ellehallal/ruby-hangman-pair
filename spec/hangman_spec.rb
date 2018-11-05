require 'hangman'

describe 'hangman' do
  game = Hangman.new
  it 'returns hi' do
    expect(game.hangman).to eq 'hi'
  end
end

# describe 'hangman' do
#   it 'returns hi' do
#     expect(hangman).to eq 'hi'
#   end
# end
