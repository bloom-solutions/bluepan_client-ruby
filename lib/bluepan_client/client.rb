module BluepanClient
  class Client

    HOSTS = {
      production: "https://api.bluepan.net",
      staging: "https://api.bluepan.net", # There is no staging server, yet
    }

    include Virtus.model
    attribute :host, String, default: HOSTS.fetch(:staging)
    attribute :api_token, String
    attribute :api_secret, String

    def get_cities(provinceseq)
      request = GetCitiesRequest.new(attributes.merge(provinceseq: provinceseq))
      raw_response = request.()
      GetCitiesResponse.new(raw_response: raw_response)
    end

    def get_provinces
      request = GetProvincesRequest.new(attributes)
      raw_response = request.()
      GetProvincesResponse.new(raw_response: raw_response)
    end

    def get_strategies
      request = GetStrategiesRequest.new(attributes)
      raw_response = request.()
      GetStrategiesResponse.new(raw_response: raw_response)
    end

    def create_recipient(args)
      request = CreateRecipientRequest.new(attributes.merge(args))
      raw_response = request.()
      CreateRecipientResponse.new(raw_response: raw_response)
    end

    def get_recipient(id)
      request = GetRecipientRequest.new(attributes.merge(recipientseq: id))
      raw_response = request.()
      GetRecipientResponse.new(raw_response: raw_response)
    end

    def create_remittance(args)
      request = CreateRemittanceRequest.new(attributes.merge(args))
      raw_response = request.()
      CreateRemittanceResponse.new(raw_response: raw_response)
    end

    def get_exchange_rates
      request = GetExchangeRatesRequest.new(attributes)
      raw_response = request.()
      GetExchangeRatesResponse.new(raw_response: raw_response)
    end

    def get_remittance(id)
      request = GetRemittanceRequest.new(attributes.merge(remittanceseq: id))
      raw_response = request.()
      GetRemittanceResponse.new(raw_response: raw_response)
    end
  end
end
