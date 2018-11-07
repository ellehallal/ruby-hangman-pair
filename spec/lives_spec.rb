require 'lives'

RSpec.describe Lives do
  it "lives start at 8" do
    lives = Lives.new
    expect(lives.lives).to eq(8)
  end
end
