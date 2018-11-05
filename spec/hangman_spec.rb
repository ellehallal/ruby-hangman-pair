require 'hangman'

describe 'hangman' do
  game = Hangman.new
  it 'returns parallelogram' do
    expect(game.hangman).to eq "parallelogram"
  end
end


# describe 'hangman' do
#   it 'returns hi' do
#     expect(hangman).to eq 'hi'
#   end
# end
