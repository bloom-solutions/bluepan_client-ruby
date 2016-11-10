require 'spec_helper'

module BluepanClient
  RSpec.describe Province, type: %i[virtus] do

    describe "attributes" do
      subject { described_class }
      it { is_expected.to have_attribute(:provinceseq, Integer) }
      it { is_expected.to have_attribute(:provincename_en, String) }
      it { is_expected.to have_attribute(:provincename_cn, String) }
    end

  end
end
