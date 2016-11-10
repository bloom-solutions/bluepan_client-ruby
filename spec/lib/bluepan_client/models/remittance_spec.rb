require 'spec_helper'

module BluepanClient
  RSpec.describe Remittance, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:remittanceseq, Integer) }
      it { is_expected.to have_attribute(:recipientseq, Integer) }
      it { is_expected.to have_attribute(:strategyseq, Integer) }
      it { is_expected.to have_attribute(:dest_currency, String) }
      it { is_expected.to have_attribute(:invoice_address, String) }
      it { is_expected.to have_attribute(:amount, Float) }
      it { is_expected.to have_attribute(:service_fee, Float) }
      it { is_expected.to have_attribute(:status, String) }
      it { is_expected.to have_attribute(:created_at, DateTime) }
      it { is_expected.to have_attribute(:completed_at, DateTime) }
    end

    describe "#completed_at" do
      it_behaves_like("a null guard", :completed_at, {
        valid_value: "2016-11-10 14:00:02".to_datetime,
      })
    end

  end
end
