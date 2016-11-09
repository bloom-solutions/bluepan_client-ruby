module BluepanClient
  class GetRecipientRequest < BaseRequest

    PATH = "/v1/:api_token/recipients/:recipientseq"

    attribute :recipientseq, Integer

    def call
      HTTParty.get(uri)
    end

  end
end
