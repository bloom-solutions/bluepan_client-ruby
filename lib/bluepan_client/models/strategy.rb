module BluepanClient
  class Strategy

    include Virtus.model
    attribute :strategyseq, Integer
    attribute :currency, String
    attribute :name_en, String
    attribute :name, String
    attribute :payoutmethod, String
    attribute :strategy, String
    attribute :maximum, Float

  end
end
