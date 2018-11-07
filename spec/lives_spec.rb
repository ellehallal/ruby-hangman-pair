require 'lives'

RSpec.describe Lives do
  it "lives start at 8" do
    lives = Lives.new
    expect(lives.lives).to eq(8)
  end

  it "removes one life" do
    lives = Lives.new
    expect(lives.subtract_life).to eq(7)
  end

  it "returns true if there are no @lives remaining" do
    lives = Lives.new
    8.times { lives.subtract_life }
    expect(lives.no_more_lives?).to eq(true)
  end

  it "returns false if @lives are more than 0" do
    lives = Lives.new
    6.times { lives.subtract_life }
    expect(lives.no_more_lives?).to eq(false)
  end
end
