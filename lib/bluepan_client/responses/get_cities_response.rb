module BluepanClient
  class GetCitiesResponse < BaseResponse

    attribute :cities, Array, lazy: true, default: :default_cities

    private

    def default_cities
      parsed_body.map { |city_hash| City.new(city_hash) }
    end

  end
end
