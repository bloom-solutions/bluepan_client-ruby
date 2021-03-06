module BluepanClient
  class Recipient

    include Virtus.model
    attribute :recipientseq, Integer
    attribute :firstname, String
    attribute :lastname, String
    attribute :mobile, String
    attribute :email, String
    attribute :created_at, DateTime
    attribute :updated_at, DateTime

    def updated_at=(v)
      super GuardNull.(v)
    end

  end
end
