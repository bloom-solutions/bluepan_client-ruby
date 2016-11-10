require 'spec_helper'

module BluepanClient
  RSpec.describe GetCitiesRequest, type: %i[virtus] do

    it "inherits from BaseRequest" do
      expect(described_class < BaseRequest).to be true
    end

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:provinceseq, Integer) }
    end

  end
end
