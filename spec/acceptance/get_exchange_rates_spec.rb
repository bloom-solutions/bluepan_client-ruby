require 'spec_helper'

RSpec.describe "#get_exchange_rates", vcr: {record: :once} do

  it "returns the list of exchange_rates" do
    client = BluepanClient.new(CONFIG)
    client.get_exchange_rates
  end

end
