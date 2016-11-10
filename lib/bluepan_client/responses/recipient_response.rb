module BluepanClient
  class RecipientResponse < BaseResponse

    attribute :recipient, Object, lazy: true, default: :default_recipient

    private

    def default_recipient
      Recipient.new(parsed_body)
    end

  end
end
