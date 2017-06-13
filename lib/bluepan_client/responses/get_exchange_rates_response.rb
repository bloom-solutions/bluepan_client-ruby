module BluepanClient
  class GetExchangeRatesResponse < BaseResponse

    attribute :exchange_rates, Array, lazy: true, default: :default_rates

    private

    def default_rates
      parsed_body.map do |pair, rate|
        ExchangeRate.new(currency_pair: pair, rate: rate)
      end
    end
  end
end
