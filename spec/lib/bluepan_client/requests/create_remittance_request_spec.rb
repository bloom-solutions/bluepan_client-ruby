require 'spec_helper'

module BluepanClient
  RSpec.describe CreateRemittanceRequest, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:paymethod, String) }
      it { is_expected.to have_attribute(:dest_currency, String) }
      it { is_expected.to have_attribute(:amount, Float) }
      it { is_expected.to have_attribute(:recipientseq, Integer) }
      it { is_expected.to have_attribute(:strategyseq, Integer) }
      it { is_expected.to have_attribute(:provinceseq, Integer) }
      it { is_expected.to have_attribute(:cityseq, Integer) }
      it { is_expected.to have_attribute(:accountname, String) }
      it { is_expected.to have_attribute(:accountnumber, String) }
      it { is_expected.to have_attribute(:branch, String) }
      it { is_expected.to have_attribute(:alipayid, String) }
      it { is_expected.to have_attribute(:wechatid, String) }
      it { is_expected.to have_attribute(:nick, String) }
      it { is_expected.to have_attribute(:payment_url, String) }
      it { is_expected.to have_attribute(:payment_account, String) }
      it { is_expected.to have_attribute(:payment_password, String) }
    end

    it "inherits from BaseRequest" do
      expect(described_class < BaseRequest).to be true
    end

  end
end
