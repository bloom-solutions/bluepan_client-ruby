require 'spec_helper'

module BluepanClient
  RSpec.describe CreateRemittanceResponse, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:remittance) }
      it { is_expected.to have_attribute(:recipient) }
    end

  end
end
