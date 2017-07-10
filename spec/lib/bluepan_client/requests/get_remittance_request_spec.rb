require 'spec_helper'

module BluepanClient
  RSpec.describe GetRemittanceRequest, type: %i[virtus] do

    it "inherits from BaseRequest" do
      expect(described_class < BaseRequest).to be true
    end

  end
end
