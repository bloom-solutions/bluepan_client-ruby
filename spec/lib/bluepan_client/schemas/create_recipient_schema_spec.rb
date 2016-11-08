require 'spec_helper'

module BluepanClient
  RSpec.describe "CreateRecipientSchema", type: %[dry_validation] do

    let(:klass) { CreateRecipientSchema }

    it "inherits from BaseSchema" do
      expect(klass.class < BaseSchema).to be true
    end

    describe "validations" do
      subject(:schema) { klass }
      it { is_expected.to validate(:api_secret, :required).filled(:str) }
      it do
        is_expected.to validate(:recipient_firstname, :required).filled(:str)
      end
      it do
        is_expected.to validate(:recipient_lastname, :required).filled(:str)
      end
      it { is_expected.to validate(:recipient_mobile, :required).filled(:str) }
      it { is_expected.to validate(:recipient_email, :optional).filled(:str) }
    end

  end
end
