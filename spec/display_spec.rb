require 'display'

RSpec.describe Display do
  it "displays welcome message" do
    display = Display.new
    expect(display.intro).to eq("Welcome to Hangman")
  end

  it "displays rules to user" do
    display = Display.new
    expect(display.game_rules).to eq(%Q(
      To win, you need to guess the mystery word or you die.
      You can have up to 8 incorrect guesses, before you're hanged.
      Let's begin!
    ))
  end

  it "displays winner message" do
    display = Display.new
    expect(display.winner).to eq("You guessed the word correctly. You are a winner!")
  end

  it "displays loser message" do
    display = Display.new
    expect(display.loser).to eq(%Q(
      You have run out of lives. You're dead!
      You're a loser.
      The game is over.
    ))
  end

end
