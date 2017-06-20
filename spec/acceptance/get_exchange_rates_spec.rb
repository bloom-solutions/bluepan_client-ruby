require 'spec_helper'

RSpec.describe "#get_exchange_rates", vcr: {record: :once} do

  it "returns the list of exchange_rates" do
    client = BluepanClient.new(CONFIG)
    response = client.get_exchange_rates

    btccny = response.exchange_rates.find {|e| e.currency_pair == "BTCCNY"}
    expect(btccny.rate > 0).to be true
  end

end
