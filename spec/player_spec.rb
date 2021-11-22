require 'player'

describe Player do
  let(:player) { Player.new }

  it 'should roll a dice' do
    dice = double('random dice')
    allow(dice).to receive(:random_value).and_return(6)
    expect(player).to respond_to(:roll).with(2).argument
    expect(player.roll(dice)).to eq(6)
  end

  it 'should roll any number of dice at one time' do
    dice = double('random dice')
    allow(dice).to receive(:random_value).and_return(4)
    expect(player.roll(dice, 3)).to eq(12)
  end

  it 'should return current score' do
    dice1 = double('random dice1')
    dice2 = double('random dice2')
    allow(dice1).to receive(:random_value).and_return(4)
    allow(dice2).to receive(:random_value).and_return(6)
    player.roll(dice1, 4)
    player.roll(dice2, 3)
    expect(player.current_score).to eq(16 + 18)
  end
end