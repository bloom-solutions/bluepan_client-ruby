module BluepanClient
  class GetRemittanceResponse < BaseResponse
    attribute :recipient, Object, lazy: true, default: :default_recipient
    attribute :remittance, Object, lazy: true, default: :default_remittance

    private

    def default_remittance
      Remittance.new(parsed_body[:remittance])
    end

    def default_recipient
      Recipient.new(parsed_body[:recipient])
    end

  end
end
