module BluepanClient
  class BaseResponse

    include Virtus.model
    attribute :raw_response, Object
    attribute :body, IndifferentHash, lazy: true, default: :default_body
    attribute :success, Boolean, lazy: true, default: :default_success

    private

    def default_success
      raw_response.success?
    end

    def default_body
      raw_response.body
    end

  end
end
