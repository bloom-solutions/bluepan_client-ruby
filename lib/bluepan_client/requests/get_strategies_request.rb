module BluepanClient
  class GetStrategiesRequest < BaseRequest

    PATH = "/v1/:api_token/strategies"

    def call
      HTTParty.get(uri)
    end

  end
end
