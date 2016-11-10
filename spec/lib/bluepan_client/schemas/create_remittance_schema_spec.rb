require 'spec_helper'

module BluepanClient
  RSpec.describe "CreateRemittanceSchema", type: %[dry_validation] do

    let(:klass) { CreateRemittanceSchema }

    it "inherits from BaseSchema" do
      expect(klass.class < BaseSchema).to be true
    end

    describe "validations" do
      subject(:schema) { klass }
      # TODO wait for the matcher gem to support included_in
      # it do
      #   is_expected.
      #     to validate(:paymethod, :optional).
      #     filled(:str)
      #     # value(included_in: described_class::PAYMETHOD_VALUES)
      # end
      # it { is_expected.to validate(:dest_currency, :required).filled(:str) }
      it { is_expected.to validate(:amount, :required).filled(:float) }
      it { is_expected.to validate(:recipientseq, :required).filled(:int) }
      it { is_expected.to validate(:strategyseq, :required).filled(:int) }
      it { is_expected.to validate(:provinceseq, :optional).filled(:int) }
      it { is_expected.to validate(:cityseq, :optional).filled(:int) }
      it { is_expected.to validate(:accountname, :optional).filled(:str) }
      it { is_expected.to validate(:accountnumber, :optional).filled(:str) }
      it { is_expected.to validate(:branch, :optional).filled(:str) }
      it { is_expected.to validate(:alipayid, :optional).filled(:str) }
      it { is_expected.to validate(:wechatid, :optional).filled(:str) }
      it { is_expected.to validate(:nick, :optional).filled(:str) }
      it { is_expected.to validate(:payment_url, :optional).filled(:str) }
      it { is_expected.to validate(:payment_account, :optional).filled(:str) }
      it { is_expected.to validate(:payment_password, :optional).filled(:str) }
    end

  end
end
