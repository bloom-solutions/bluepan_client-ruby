require "virtus"
require "dry-validation"
require "bluepan_client/version"
require "bluepan_client/schemas/base_schema"
require "bluepan_client/schemas/client_schema"
require "bluepan_client/client"

module BluepanClient

  def self.new(opts={})
    client = Client.new(opts)
    error_messages = ClientSchema.(client.attributes).
      messages(full: true).values
    fail ArgumentError, error_messages if error_messages.any?
    client
  end

end
