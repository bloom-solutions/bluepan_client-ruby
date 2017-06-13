require 'spec_helper'

module BluepanClient
  RSpec.describe GetExchangeRatesResponse, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:exchange_rates, Array) }
    end

    it "inherits from BaseResponse" do
      expect(described_class < BaseResponse).to be true
    end

  end
end
