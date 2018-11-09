class Start
  require 'game'

  def initialize(play_again="Y")
    @play_again = play_again
  end

  def play_game
    while @play_again == "Y"
      new_game = Game.new
      new_game.play
      self.play_again
      @play_again = gets.chomp.upcase
    end
    self.exit_message
  end

  def play_again
    print %Q(
        Play again?
        >)
  end

  def exit_message
    print %Q(
        Thanks for playing Hangman!
        Created by Derek Baker and Elle Hallal)
  end

end
