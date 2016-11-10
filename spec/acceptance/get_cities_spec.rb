require 'spec_helper'

RSpec.describe "#get_cities", vcr: {record: :once} do

  it "returns the list of cities" do
    client = BluepanClient.new(CONFIG)

    province_response = client.get_provinces
    expect(province_response).to be_success
    provinces = province_response.provinces
    province = provinces.first

    response = client.get_cities(province.provinceseq)
    expect(response).to be_success

    cities = response.cities
    expect(cities).to_not be_empty
    city = cities.sample
    expect(city.cityseq).to be_present
    expect(city.provinceseq).to be_present
    expect(city.cityname_en).to be_present
    expect(city.cityname_cn).to be_present
  end

end
