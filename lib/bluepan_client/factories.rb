FactoryGirl.define do

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

end
