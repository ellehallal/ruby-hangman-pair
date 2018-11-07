class Lives
  attr_reader :lives

  def initialize(lives=8)
	  @lives = lives
  end

  def subtract_life
    @lives -= 1
  end

  def no_more_lives?
    @lives == 0
  end
end
