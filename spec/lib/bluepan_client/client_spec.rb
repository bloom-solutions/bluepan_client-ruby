require 'spec_helper'

module BluepanClient
  RSpec.describe Client, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it do
        is_expected.to have_attribute(:host, String).
          with_default(described_class::HOSTS[:staging])
      end
      it { is_expected.to have_attribute(:api_token, String) }
      it { is_expected.to have_attribute(:api_secret, String) }
    end

  end
end
