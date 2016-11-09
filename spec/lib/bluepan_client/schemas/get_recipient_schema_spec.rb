require 'spec_helper'

module BluepanClient
  RSpec.describe "GetRecipientSchema", type: %[dry_validation] do

    let(:klass) { GetRecipientSchema }

    it "inherits from BaseSchema" do
      expect(klass.class < BaseSchema).to be true
    end

    describe "validations" do
      subject(:schema) { klass }
      it { is_expected.to validate(:recipientseq, :required).filled }
    end

  end
end
