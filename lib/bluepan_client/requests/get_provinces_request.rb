module BluepanClient
  class GetProvincesRequest < BaseRequest

    PATH = "/v1/:api_token/provinces"

    def call
      HTTParty.get(uri)
    end

  end
end
