module BluepanClient
  CreateRecipientSchema = Dry::Validation.Schema(BaseSchema) do

    required(:api_secret).filled(:str?)
    required(:recipient_firstname).filled(:str?)
    required(:recipient_lastname).filled(:str?)
    required(:recipient_mobile).filled(:str?)
    optional(:recipient_email).filled(:str?)

  end
end
