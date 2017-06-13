module BluepanClient
  class GetExchangeRatesRequest < BaseRequest

    PATH = "/v1/:api_token/rates"

    def call
      HTTParty.get(uri)
    end

  end
end
