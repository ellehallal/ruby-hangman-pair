class Game
  require 'display'
  require 'word'


  attr_reader :display, :word

  def initialize
    @display = Display.new
    @word = Word.new('hello')
  end
end
