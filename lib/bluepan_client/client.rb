module BluepanClient
  class Client

    include Virtus.model
    attribute :api_token, String
    attribute :api_secret_key, String

  end
end
