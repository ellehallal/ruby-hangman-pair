class Game
  require 'display'
  require 'word'
  require 'lives'


  attr_reader :display, :word, :lives

  def initialize(display=Display.new, word=Word.new('hello'), lives=Lives.new)
    @display = display
    @word = word
    @lives = lives
  end

  def welcome
    @display.intro
    @display.game_rules
  end


  def play
    welcome
    while !@word.solved? || !@word.lives.no_more_lives?
      @word.add_guess(letter)
    end
  end


end
