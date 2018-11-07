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
      Guess a letter:
    ))
  end

end
