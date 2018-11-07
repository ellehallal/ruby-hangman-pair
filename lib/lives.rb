class Lives
  attr_reader :lives

  def initialize
    @lives = 8
  end

  def subtract_life
    @lives -= 1
  end
end
