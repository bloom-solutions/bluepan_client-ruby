module BluepanClient
  class GetProvincesResponse < BaseResponse

    attribute :provinces, Array, lazy: true, default: :default_provinces

    private

    def default_provinces
      parsed_body.map { |province_hash| Province.new(province_hash) }
    end

  end
end
