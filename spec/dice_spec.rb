require 'dice'

describe Dice do
  it 'should have a random value' do
    dice = double('random dice')
    allow(dice).to receive(:random_value).and_return(6)
    expect(dice.random_value).to eq(6)
  end
end