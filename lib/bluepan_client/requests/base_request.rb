module BluepanClient
  class BaseRequest

    include Virtus.model
    attribute :host, String
    attribute :api_token, String
    attribute :api_secret_key, String
    attribute :path, String, lazy: true, default: :default_path
    attribute :uri, String, lazy: true, default: :default_uri

    private

    def default_path
      ApplyVars.(self.class::PATH, api_token: api_token)
    end

    def default_uri
      u = URI.parse(host)
      u.path = path
      u.to_s
    end

  end
end
