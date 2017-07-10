require 'spec_helper'

RSpec.describe "get_remittance", vcr: {record: :once} do

  it "creates a recipient" do
    client = BluepanClient.new(CONFIG)
    test_remittance = REMITTANCE_FIXTURES["jose_rizal_remittance"]
    get_remittance_response = client.get_remittance(
      test_remittance["remittanceseq"])

    expect(get_remittance_response).to be_success
    remittance = get_remittance_response.remittance

    expect(remittance.remittanceseq).to eq test_remittance["remittanceseq"]
    expect(remittance.status).to eq test_remittance["status"]
    expect(remittance.dest_currency).to eq test_remittance["dest_currency"]
    expect(remittance.amount).to eq test_remittance["amount"].to_i
  end

end
