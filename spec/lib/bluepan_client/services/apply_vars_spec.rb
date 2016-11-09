require 'spec_helper'

module BluepanClient
  RSpec.describe ApplyVars do

    it "applies variables on the string with the objects attributes' values" do
      klass = Class.new do
        attr_accessor :replace, :another, :number

        def initialize(replace, another, number)
          self.replace = replace
          self.another = another
          self.number = number
        end
      end

      object = klass.new("abc", "one", 5)

      result = described_class.("/isfor/:replace/:number/:another", object)
      expect(result).to eq "/isfor/abc/5/one"
    end

  end
end
