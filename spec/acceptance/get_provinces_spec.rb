require 'spec_helper'

RSpec.describe "#get_provinces", vcr: {record: :once} do

  it "returns the list of provinces" do
    client = BluepanClient.new(CONFIG)
    response = client.get_provinces
    provinces = response.provinces

    expect(provinces).to_not be_empty

    province = provinces.sample
    expect(province.provinceseq).to be_present
    expect(province.provincename_en).to be_present
    expect(province.provincename_cn).to be_present
  end

end
