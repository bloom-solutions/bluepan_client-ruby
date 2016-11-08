module BluepanClient
  class CreateRecipientResponse < BaseResponse

    attribute :success, Boolean, lazy: true, default: :default_success
    attribute :recipient, Object, lazy: true, default: :default_recipient

    private

    def default_success
      raw_response.success?
    end

    def default_recipient
      Recipient.new(JSON.parse(body))
    end

  end
end
