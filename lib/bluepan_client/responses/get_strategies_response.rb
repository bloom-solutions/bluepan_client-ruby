module BluepanClient
  class GetStrategiesResponse < BaseResponse

    attribute :strategies, Array, lazy: true, default: :default_strategies

    private

    def default_strategies
      parsed_body.map { |strategy_hash| Strategy.new(strategy_hash) }
    end

  end
end
