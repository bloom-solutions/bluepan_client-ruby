require 'spec_helper'

module BluepanClient
  RSpec.describe Strategy, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:strategyseq, Integer) }
      it { is_expected.to have_attribute(:currency, String) }
      it { is_expected.to have_attribute(:name_en, String) }
      it { is_expected.to have_attribute(:name, String) }
      it { is_expected.to have_attribute(:payoutmethod, String) }
      it { is_expected.to have_attribute(:strategy, String) }
      it { is_expected.to have_attribute(:maximum, Float) }
    end

  end
end
