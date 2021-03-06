require 'spec_helper'

module BluepanClient
  RSpec.describe "BaseSchema" do

    let(:schema) { BaseSchema.new }

    it "requires api_token" do
      message = schema.(api_token: "").messages[:api_token]
      expect(message).to include("must be filled")
    end

    it "requires api_secret" do
      message = schema.(api_secret: "").messages[:api_secret]
      expect(message).to include("must be filled")
    end

  end
end
