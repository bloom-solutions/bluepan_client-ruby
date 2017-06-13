module BluepanClient
  class ExchangeRate

    include Virtus.model
    attribute :rate, Float
    attribute :currency_pair, String

  end
end
