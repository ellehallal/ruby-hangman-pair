require 'display'

RSpec.describe Display do

  it "prints rules to user" do
    display = Display.new
    expect {display.game_rules}.to output(%Q(
        Welcome to Hangman!
        To win, you need to guess the mystery word or you die.
        You can have up to 8 incorrect guesses, before you're hanged.
        Let's begin!\n    )).to_stdout
  end

  it "prints winner message" do
    display = Display.new
    expect {display.winner}.to output(%Q(
        You've guessed the word correctly. You are a winner!
    )).to_stdout
  end

  it "prints loser message" do
    display = Display.new
    expect {display.loser}.to output(%Q(
        You have run out of lives. You're dead!
        You're a loser.
        The game is over.
    )).to_stdout
  end

  it "prints guess a letter" do
    display = Display.new
    expect {display.guess_letter}.to output(%Q(
        Guess a letter
        >
    )).to_stdout
  end

  it "prints 'Play again? >'" do
    display = Display.new
    expect {display.play_again}.to output(%Q(
      Guess a letter
      >
    )).to_stdout
  end

end
