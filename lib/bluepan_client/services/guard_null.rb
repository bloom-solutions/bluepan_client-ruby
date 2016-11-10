module BluepanClient
  class GuardNull

    def self.call(value)
      value == "null" ? nil : value
    end

  end
end
