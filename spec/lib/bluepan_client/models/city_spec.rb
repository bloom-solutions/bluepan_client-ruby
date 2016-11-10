require 'spec_helper'

module BluepanClient
  RSpec.describe City, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:cityseq, Integer) }
      it { is_expected.to have_attribute(:provinceseq, Integer) }
      it { is_expected.to have_attribute(:cityname_en, String) }
      it { is_expected.to have_attribute(:cityname_cn, String) }
    end

  end
end
