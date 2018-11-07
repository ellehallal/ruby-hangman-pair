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
end
