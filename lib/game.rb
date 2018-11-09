require 'display'
require 'word'

class Game

  attr_reader :display, :word

  def initialize(display=Display.new, word=Word.new())
    @display = display
    @word = word

  end

  def play
      @display.game_rules
      puts @word.display_correct_guesses
      until @word.solved? || @word.lives == 0
        @display.guess_letter
        letter = gets.chomp.downcase
        puts @word.add_guess(letter)
      end

      if @word.solved?
        puts @word.show_answer
        puts @display.winner
      else
        @display.loser
      end
  end

end
