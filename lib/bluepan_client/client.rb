module BluepanClient
  class Client

    HOSTS = {
      production: "https://api.bluepan.net",
      staging: "https://api.bluepan.net",
    }

    include Virtus.model
    attribute :host, String, default: HOSTS.fetch(:staging)
    attribute :api_token, String
    attribute :api_secret_key, String

    def get_strategies
      request = GetStrategiesRequest.new(attributes)
      raw_response = request.()
      GetStrategiesResponse.new(raw_response: raw_response)
    end

  end
end
