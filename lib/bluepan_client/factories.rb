FactoryBot.define do

  factory :bluepan_client_province, class: "BluepanClient::Province" do
    sequence(:provinceseq) { |n| n }
    provincename_en "English Name"
    provincename_cn "Chinese Name"
  end

  factory :bluepan_client_city, class: "BluepanClient::City" do
    sequence(:provinceseq) { |n| n }
    sequence(:cityseq) { |n| n+50 }
    cityname_en "English Name"
    cityname_cn "Chinese Name"
  end

  factory :bluepan_client_recipient, class: "BluepanClient::Recipient" do
    sequence(:recipientseq) { |n| n }
    firstname "Testy"
    lastname "McTestface"
    mobile "+839199299111"
    email "testy@mctest.face"
  end

  factory :bluepan_client_strategy, class: "BluepanClient::Strategy" do
    sequence(:strategyseq) { |n| n }
    currency { %w(KRW CNY).sample }
    name "Local Name"
    name_en "English Name"
    payoutmethod "2"
    strategy { %w(bank alipay wechatpay payment).sample }
    maximum 200_000
  end

end
