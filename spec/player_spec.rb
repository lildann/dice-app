require 'player'
# require 'dice'

describe Player do
  let(:player) { Player.new }

  it 'should be able to roll a dice' do
    expect(player).to respond_to(:roll).with(1).argument
  end

  it 'should roll a dice' do
    dice = double('random dice')
    allow(dice).to receive(:random_value).and_return(6)
    expect(player.roll(dice)).to eq(6)
  end
end