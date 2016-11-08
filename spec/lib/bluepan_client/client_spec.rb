require 'spec_helper'

module BluepanClient
  RSpec.describe Client, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:api_token, String) }
      it { is_expected.to have_attribute(:api_secret_key, String) }
    end

  end
end
