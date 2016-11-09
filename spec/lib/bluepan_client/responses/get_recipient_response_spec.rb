require 'spec_helper'

module BluepanClient
  RSpec.describe GetRecipientResponse, type: %i[virtus] do

    it "inherits from RecipientResponse" do
      expect(described_class < RecipientResponse).to be true
    end

  end
end
