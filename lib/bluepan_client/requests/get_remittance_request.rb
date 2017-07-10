module BluepanClient
  class GetRemittanceRequest < BaseRequest

    PATH = "/v1/:api_token/remittances/:remittanceseq"

    attribute :remittanceseq, Integer

    def call
      HTTParty.get(uri)
    end

  end
end
