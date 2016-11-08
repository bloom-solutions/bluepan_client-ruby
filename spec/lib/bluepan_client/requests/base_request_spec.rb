require 'spec_helper'

module BluepanClient
  RSpec.describe BaseRequest, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:host, String) }
      it { is_expected.to have_attribute(:api_token, String) }
      it { is_expected.to have_attribute(:api_secret, String) }
      it { is_expected.to have_attribute(:path, String) }
      it { is_expected.to have_attribute(:uri, String) }
    end

    describe "#uri" do
      let(:request) do
        described_class.new(host: "https://place.com", path: "/allo/1")
      end
      subject { request.uri }
      it { is_expected.to eq "https://place.com/allo/1" }
    end

  end
end
