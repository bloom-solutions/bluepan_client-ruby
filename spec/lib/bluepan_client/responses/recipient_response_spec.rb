require 'spec_helper'

module BluepanClient
  RSpec.describe RecipientResponse, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:recipient) }
    end

  end
end
