module BluepanClient
  class Remittance

    include Virtus.model
    attribute :remittanceseq, Integer
    attribute :recipientseq, Integer
    attribute :strategyseq, Integer
    attribute :dest_currency, String
    attribute :invoice_address, String
    attribute :amount, Float
    attribute :service_fee, Float
    attribute :status, String
    attribute :created_at, DateTime
    attribute :completed_at, DateTime

    def completed_at=(v)
      super GuardNull.(v)
    end

  end
end
