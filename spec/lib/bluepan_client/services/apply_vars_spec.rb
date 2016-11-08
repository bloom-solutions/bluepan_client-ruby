require 'spec_helper'

module BluepanClient
  RSpec.describe ApplyVars do

    it "applies given params to the string" do
      result = described_class.("/isfor/:replace/ment/:another", {
        replace: "abc",
        another: "one",
        doesnt: "matter",
      })
      expect(result).to eq "/isfor/abc/ment/one"
    end

  end
end
