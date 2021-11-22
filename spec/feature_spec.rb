require 'player'
require 'dice'

describe 'Feature test' do
  it 'a player should roll and dice and return a value' do
    player = Player.new
    dice = double('random dice')
    allow(dice).to receive(:random_value).and_return(4)
    expect(player.roll(dice)).to eq(4)
  end
end