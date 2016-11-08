require 'spec_helper'

module BluepanClient
  RSpec.describe "ClientSchema" do

    it "inherits from BaseSchema" do
      expect(ClientSchema.class < BaseSchema).to be true
    end

  end
end
