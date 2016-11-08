require 'spec_helper'

module BluepanClient
  RSpec.describe BaseResponse, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:raw_response) }
      it { is_expected.to have_attribute(:body) }
    end

    describe "#body" do
      let(:raw_response) do
        instance_double(HTTParty::Response, body: {"hi" => "there"})
      end
      let(:response) { described_class.new(raw_response: raw_response) }

      it "defaults to the body of the raw_response" do
        expect(response.body[:hi]).to eq("there")
      end
    end

  end
end
