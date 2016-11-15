module BluepanClient
  class CreateRemittanceResponse < BaseResponse

    attribute :remittance, Object, lazy: true, default: :default_remittance
    attribute :recipient, Object, lazy: true, default: :default_recipient

    private

    def default_remittance
      Remittance.new(parsed_body[:remittance])
    end

    def default_recipient
      Recipient.new(parsed_body[:recipient])
    end

  end
end
