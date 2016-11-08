require 'spec_helper'

module BluepanClient
  RSpec.describe CreateRecipientRequest, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:recipient_firstname, String) }
      it { is_expected.to have_attribute(:recipient_lastname, String) }
      it { is_expected.to have_attribute(:recipient_mobile, String) }
      it { is_expected.to have_attribute(:recipient_email, String) }
    end

    it "inherits from BaseRequest" do
      expect(described_class < BaseRequest).to be true
    end

  end
end
