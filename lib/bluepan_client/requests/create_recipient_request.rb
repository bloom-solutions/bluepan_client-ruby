module BluepanClient
  class CreateRecipientRequest < BaseRequest

    PATH = "/v1/:api_token/recipients"

    attribute :recipient_firstname, String
    attribute :recipient_lastname, String
    attribute :recipient_mobile, String
    attribute :recipient_email, String

    def call
      HTTParty.post(uri, {
        body: attributes.slice(*%i[
          api_secret
          recipient_firstname
          recipient_lastname
          recipient_mobile
          recipient_email
        ])
      })
    end

  end
end
