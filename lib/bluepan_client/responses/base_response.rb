module BluepanClient
  class BaseResponse

    include Virtus.model
    attribute :raw_response, Object
    attribute :body, IndifferentHash, lazy: true, default: :default_body

    private

    def default_body
      raw_response.body
    end

  end
end
