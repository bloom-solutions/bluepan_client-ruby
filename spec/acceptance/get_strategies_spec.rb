require 'spec_helper'

RSpec.describe "#get_strategies", vcr: {record: :once} do

  it "returns the list of strategies" do
    client = BluepanClient.new(CONFIG)
    response = client.get_strategies
    strategies = response.strategies

    expect(strategies).to_not be_empty

    strategy = strategies.sample
    expect(strategy.strategyseq).to be_present
    expect(strategy.currency).to be_present
    expect(strategy.name_en).to be_present
    expect(strategy.name).to be_present
    expect(strategy.payoutmethod).to be_present
    expect(strategy.strategy).to be_a String # have found blank strategies
    expect(strategy.maximum).to be_a Float
  end

end
