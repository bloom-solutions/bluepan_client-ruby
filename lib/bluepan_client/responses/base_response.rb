module BluepanClient
  class BaseResponse

    include Virtus.model
    attribute :raw_response, Object
    attribute :body, String, lazy: true, default: :default_body
    attribute(:parsed_body, IndifferentHash, {
      lazy: true,
      default: :default_parsed_body,
    })
    attribute :success, Boolean, lazy: true, default: :default_success

    private

    def default_success
      return false if !raw_response.success?
      return true if !parsed_body.respond_to?(:keys)
      parsed_body[:error].nil?
    end

    def default_body
      raw_response.body
    end

    def default_parsed_body
      JSON.parse(body)
    end

  end
end
