require 'spec_helper'

module BluepanClient
  RSpec.describe GetProvincesResponse, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:provinces, Array) }
    end

    it "inherits from BaseResponse" do
      expect(described_class < BaseResponse).to be true
    end

  end
end
