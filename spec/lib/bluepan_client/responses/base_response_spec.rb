require 'spec_helper'

module BluepanClient
  RSpec.describe BaseResponse, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:raw_response) }
      it { is_expected.to have_attribute(:body) }
      it { is_expected.to have_attribute(:parsed_body) }
    end

    describe "#body" do
      let(:body) { {"hi" => "there"}.to_json }
      let(:raw_response) { instance_double(HTTParty::Response, body: body) }
      let(:response) { described_class.new(raw_response: raw_response) }

      it "defaults to the body of the raw_response" do
        expect(response.body).to eq(body)
      end
    end

    describe "#parsed_body" do
      let(:response) { described_class.new(body: {"hi" => "there"}.to_json) }

      it "defaults to the JSON-parsed body" do
        expect(response.parsed_body[:hi]).to eq("there")
      end
    end

    describe "#success?" do
      # Must also test for the body to contain "error" because the server still
      # returns success http status code even if there was something wrong with
      # the request
      let(:raw_response) do
        instance_double(HTTParty::Response, success?: success)
      end
      let(:response) do
        described_class.new(raw_response: raw_response, parsed_body: parsed_body)
      end
      subject { response.success? }

      context "raw_response success and parsed_body contains :error key" do
        let(:success) { true }
        let(:parsed_body) { {error: "Some error"} }
        it { is_expected.to be false }
      end

      context "raw_response is not success and parsed_body contains :error key" do
        let(:success) { false }
        let(:parsed_body) { {error: "Some error"} }
        it { is_expected.to be false }
      end

      context "raw_response success and parsed_body does not contain the :error key" do
        let(:success) { true }
        let(:parsed_body) { {} }
        it { is_expected.to be true }
      end

      context "raw_response success and parsed_body contains the :error key" do
        let(:success) { true }
        let(:parsed_body) { {error: "Some error"} }
        it { is_expected.to be false }
      end

      context "raw_response success and parsed_body is an array" do
        let(:success) { true }
        let(:parsed_body) { [{}] }
        it { is_expected.to be true }
      end
    end

  end
end
