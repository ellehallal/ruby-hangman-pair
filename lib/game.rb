require 'display'
require 'word'

class Game

  attr_reader :display, :word, :lives

  def initialize(display=Display.new, word=Word.new('hello'))
    @display = display
    @word = word

  end

  def play
    puts @display.intro
    puts @display.game_rules
    until @word.solved? || @word.lives == 1
      puts "Your lives:#{word.lives}"
      puts "Guess a letter"
      print "> "
      letter = gets.chomp
      @word.add_guess(letter)
    end

    if @word.solved?
      puts "#{@word.show_answer}"
      puts @display.winner
    else
      puts @display.loser
    end
  end

end
