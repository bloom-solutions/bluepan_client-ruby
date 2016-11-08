require 'spec_helper'

RSpec.describe "create_recipient", vcr: {record: :once} do

  it "creates a recipient" do
    client = BluepanClient.new(CONFIG)
    response = client.create_recipient(
      recipient_firstname: "Testy",
      recipient_lastname: "McTestface",
      recipient_mobile: "+639178908908",
      recipient_email: "testy@mctest.face",
    )

    expect(response).to be_success

    recipient = response.recipient
    expect(recipient.firstname).to eq "Testy"
    expect(recipient.lastname).to eq "McTestface"
    expect(recipient.mobile).to eq "+639178908908"
    expect(recipient.email).to eq "testy@mctest.face"
  end

end
