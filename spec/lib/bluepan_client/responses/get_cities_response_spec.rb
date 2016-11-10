require 'spec_helper'

module BluepanClient
  RSpec.describe GetCitiesResponse, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:cities, Array) }
    end

    it "inherits from BaseResponse" do
      expect(described_class < BaseResponse).to be true
    end

  end
end
