require 'spec_helper'

module BluepanClient
  RSpec.describe ApplyVars do

    it "applies variables on the string with the objects attributes' values" do
      klass = Class.new do
        attr_accessor :replace, :another

        def initialize(replace, another, number)
          self.replace = replace
          self.another = another
        end
      end

      object = klass.new("abc", "one")

      result = described_class.("/isfor/:replace/ment/:another", object)
      expect(result).to eq "/isfor/abc/ment/one"
    end

  end
end
