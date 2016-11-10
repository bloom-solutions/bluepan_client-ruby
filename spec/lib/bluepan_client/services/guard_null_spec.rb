require 'spec_helper'

module BluepanClient
  RSpec.describe GuardNull do

    context "given 'null'" do
      subject { described_class.("null") }
      it { is_expected.to be_nil }
    end

    context "given a non-'null' value" do
      subject { described_class.("abc") }
      it { is_expected.to eq "abc" }
    end

  end
end
