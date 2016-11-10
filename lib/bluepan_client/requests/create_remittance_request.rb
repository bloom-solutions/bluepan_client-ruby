module BluepanClient
  class CreateRemittanceRequest < BaseRequest

    PATH = "/v1/:api_token/remittances"

      attribute :paymethod, String
      attribute :dest_currency, String
      attribute :amount, Float
      attribute :recipientseq, Integer
      attribute :strategyseq, Integer
      attribute :provinceseq, Integer
      attribute :cityseq, Integer
      attribute :accountname, String
      attribute :accountnumber, String
      attribute :branch, String
      attribute :alipayid, String
      attribute :wechatid, String
      attribute :nick, String
      attribute :payment_url, String
      attribute :payment_account, String
      attribute :payment_password, String

    def call
      HTTParty.post(uri, {
        body: attributes.slice(*%i[
          api_secret
          paymethod
          dest_currency
          amount
          recipientseq
          strategyseq
          provinceseq
          cityseq
          accountname
          accountnumber
          branch
          alipayid
          wechatid
          nick
          payment_url
          payment_account
          payment_password
        ])
      })
    end

  end
end
