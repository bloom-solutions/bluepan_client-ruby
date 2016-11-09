module BluepanClient
  GetRecipientSchema = Dry::Validation.Schema(BaseSchema) do

    required(:recipientseq).filled

  end
end
