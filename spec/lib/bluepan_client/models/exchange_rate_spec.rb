require 'spec_helper'

module BluepanClient
  RSpec.describe ExchangeRate, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:rate, Float) }
      it { is_expected.to have_attribute(:currency_pair, String) }
    end

  end
end
