require 'spec_helper'

RSpec.describe "create_remittance", vcr: {record: :once} do

  it "creates a remittance" do
    client = BluepanClient.new(CONFIG)

    create_recipient_response = client.create_recipient(
      recipient_firstname: "Testy",
      recipient_lastname: "McTestface",
      recipient_mobile: "+639178908908",
      recipient_email: "testy@mctest.face",
    )
    expect(create_recipient_response).to be_success
    recipient = create_recipient_response.recipient

    get_strategies_response = client.get_strategies
    expect(get_strategies_response).to be_success
    strategies = get_strategies_response.strategies
    strategy = strategies.find do |strategy|
      strategy.currency == "KRW" &&
        strategy.strategy == "bank"
    end

    response = client.create_remittance(
      dest_currency: "KRW",
      amount: 20_000,
      recipientseq: recipient.recipientseq,
      strategyseq: strategy.strategyseq,
      accountname: "Testy McTestface",
      accountnumber: "00000000000",
    )

    expect(response).to be_success
    remittance = response.remittance
    expect(remittance.remittanceseq).to be_present
    expect(remittance.dest_currency).to eq "KRW"
    expect(remittance.amount).to eq 20_000
    expect(remittance.service_fee).to be_zero
    expect(remittance.invoice_address).to be_blank
    expect(remittance.status).to eq "waiting"
    expect(remittance.created_at).to be_present
    expect(remittance.completed_at).to be_nil
    expect(remittance.strategyseq).to eq "Testy McTestface"
    recipient = response.recipient
    expect(recipient.firstname).to eq "Testy"
  end

end
