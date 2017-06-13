require "virtus"
require "httparty"
require "dry-validation"
require "active_support/core_ext/hash/indifferent_access"
require "bluepan_client/version"
require "bluepan_client/indifferent_hash"
require "bluepan_client/services/guard_null"
require "bluepan_client/services/apply_vars"
require "bluepan_client/schemas/base_schema"
require "bluepan_client/schemas/client_schema"
require "bluepan_client/schemas/create_recipient_schema"
require "bluepan_client/schemas/get_recipient_schema"
require "bluepan_client/schemas/create_remittance_schema"
require "bluepan_client/models/city"
require "bluepan_client/models/exchange_rate"
require "bluepan_client/models/province"
require "bluepan_client/models/recipient"
require "bluepan_client/models/remittance"
require "bluepan_client/models/strategy"
require "bluepan_client/client"
require "bluepan_client/requests/base_request"
require "bluepan_client/requests/get_cities_request"
require "bluepan_client/requests/get_exchange_rates_request"
require "bluepan_client/requests/get_provinces_request"
require "bluepan_client/requests/get_strategies_request"
require "bluepan_client/requests/create_recipient_request"
require "bluepan_client/requests/create_remittance_request"
require "bluepan_client/requests/get_recipient_request"
require "bluepan_client/responses/base_response"
require "bluepan_client/responses/get_cities_response"
require "bluepan_client/responses/get_exchange_rates_response"
require "bluepan_client/responses/get_provinces_response"
require "bluepan_client/responses/get_strategies_response"
require "bluepan_client/responses/recipient_response"
require "bluepan_client/responses/create_recipient_response"
require "bluepan_client/responses/create_remittance_response"
require "bluepan_client/responses/get_recipient_response"

module BluepanClient

  def self.new(opts={})
    client = Client.new(opts)
    error_messages = ClientSchema.(client.attributes).
      messages(full: true).values
    fail ArgumentError, error_messages if error_messages.any?
    client
  end

end
