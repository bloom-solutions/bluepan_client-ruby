require "virtus"
require "httparty"
require "dry-validation"
require "active_support/core_ext/hash/indifferent_access"
require "bluepan_client/version"
require "bluepan_client/indifferent_hash"
require "bluepan_client/services/apply_vars"
require "bluepan_client/schemas/base_schema"
require "bluepan_client/schemas/client_schema"
require "bluepan_client/models/strategy"
require "bluepan_client/client"
require "bluepan_client/requests/base_request"
require "bluepan_client/requests/get_strategies_request"
require "bluepan_client/responses/base_response"
require "bluepan_client/responses/get_strategies_response"

module BluepanClient

  def self.new(opts={})
    client = Client.new(opts)
    error_messages = ClientSchema.(client.attributes).
      messages(full: true).values
    fail ArgumentError, error_messages if error_messages.any?
    client
  end

end
