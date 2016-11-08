require "spec_helper"

describe BluepanClient do
  it "has a version number" do
    expect(BluepanClient::VERSION).not_to be nil
  end

  describe ".new" do
    describe "valid client" do
      it "creates a new BluepanClient::Client" do
        client = described_class.new(api_token: "abc", api_secret_key: "xyz")
        expect(client).to be_a BluepanClient::Client
        expect(client.api_token).to eq "abc"
        expect(client.api_secret_key).to eq "xyz"
      end
    end

    describe "invalid client" do
      it "raises an error" do
        expect { described_class.new(api_token: "abc") }.
          to raise_error(ArgumentError)
      end
    end
  end
end
