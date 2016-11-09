module BluepanClient
  class ApplyVars

    include Virtus.model
    attribute :string, String
    attribute :object, Object

    def self.call(string, object)
      self.new(string: string, object: object).()
    end

    def call
      matches = string.scan(/:\w+/)
      matches.reduce(string) do |str, var|
        method_name = var.gsub(":", "")
        value = object.send(method_name)
        str.gsub(var, value.to_s)
      end
    end

  end
end
