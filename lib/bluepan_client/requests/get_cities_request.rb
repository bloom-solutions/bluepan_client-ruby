module BluepanClient
  class GetCitiesRequest < BaseRequest

    PATH = "/v1/:api_token/cities/:provinceseq"

    attribute :provinceseq, Integer

    def call
      HTTParty.get(uri)
    end

  end
end
