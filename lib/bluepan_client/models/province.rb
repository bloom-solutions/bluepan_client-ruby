module BluepanClient
  class Province

    include Virtus.model
    attribute :provinceseq, Integer
    attribute :provincename_en, String
    attribute :provincename_cn, String

  end
end
