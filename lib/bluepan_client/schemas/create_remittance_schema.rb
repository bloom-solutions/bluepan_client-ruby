module BluepanClient
  CreateRemittanceSchema = Dry::Validation.Schema(BaseSchema) do

    PAYMETHODS = %w(CREDIT BTC)
    DEST_CURRENCIES = %w(KRW CNY)

    optional(:paymethod).filled(:str?, included_in?: PAYMETHODS)
    optional(:dest_currency).filled(:str?, included_in?: DEST_CURRENCIES)
    required(:amount).filled(:float?)
    required(:recipientseq).filled(:int?)
    required(:strategyseq).filled(:int?)
    optional(:provinceseq).filled(:int?)
    optional(:cityseq).filled(:int?)
    optional(:accountname).filled(:str?)
    optional(:accountnumber).filled(:str?)
    optional(:branch).filled(:str?)
    optional(:alipayid).filled(:str?)
    optional(:wechatid).filled(:str?)
    optional(:nick).filled(:str?)
    optional(:payment_url).filled(:str?)
    optional(:payment_account).filled(:str?)
    optional(:payment_password).filled(:str?)

  end
end
