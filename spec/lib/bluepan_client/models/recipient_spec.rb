require 'spec_helper'

module BluepanClient
  RSpec.describe Recipient, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:recipientseq, Integer) }
      it { is_expected.to have_attribute(:firstname, String) }
      it { is_expected.to have_attribute(:lastname, String) }
      it { is_expected.to have_attribute(:mobile, String) }
      it { is_expected.to have_attribute(:email, String) }
      it { is_expected.to have_attribute(:created_at, DateTime) }
      it { is_expected.to have_attribute(:updated_at, DateTime) }
    end

    describe "#updated_at" do
      it_behaves_like("a null guard", :updated_at, {
        valid_value: "2016-11-10 14:00:02".to_datetime,
      })
    end

  end
end
