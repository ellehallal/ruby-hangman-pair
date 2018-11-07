class Game
  require 'display'


  attr_reader :display
  
  def initialize
    @display = Display.new
  end
end
