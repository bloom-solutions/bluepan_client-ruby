module BluepanClient
  class GetStrategiesResponse < BaseResponse

    attribute :strategies, Array, lazy: true, default: :default_strategies

    private

    def default_strategies
      JSON.parse(body).map { |strategy_hash| Strategy.new(strategy_hash) }
    end

  end
end
