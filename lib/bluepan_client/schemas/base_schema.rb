module BluepanClient
  class BaseSchema < Dry::Validation::Schema

    define! do
      required(:api_token).filled
      required(:api_secret).filled
    end

  end
end
