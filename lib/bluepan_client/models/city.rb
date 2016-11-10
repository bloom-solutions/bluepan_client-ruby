module BluepanClient
  class City

    include Virtus.model
    attribute :cityseq, Integer
    attribute :provinceseq, Integer
    attribute :cityname_en, String
    attribute :cityname_cn, String

  end
end
