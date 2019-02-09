require 'start'

RSpec.describe Start do

  it "will output 'Play again? >'" do
    start = Start.new
    expect {start.play_again}.to output(%Q(
        Play again?
        >)).to_stdout
  end

  it "will output 'Thanks for playing Hangman!'" do
    start = Start.new
    expect {start.exit_message}.to output(%Q(
        Thanks for playing Hangman!
      )).to_stdout
  end


end
