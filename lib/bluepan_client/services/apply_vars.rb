module BluepanClient
  class ApplyVars

    include Virtus.model
    attribute :string, String
    attribute :params, IndifferentHash

    def self.call(string, params)
      self.new(string: string, params: params).()
    end

    def call
      params.reduce(string) { |str, (key, value)| str.gsub(":#{key}", value) }
    end

  end
end
