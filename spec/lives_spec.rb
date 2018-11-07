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




end
