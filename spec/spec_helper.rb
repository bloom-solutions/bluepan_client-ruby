$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "pry"
require "pry-byebug"
require "virtus-matchers"
require "bluepan_client"
require "pathname"
require "yaml"
require "active_support/core_ext/object/blank"
require "dry-validation-matchers"

SPEC_DIR = Pathname.new(File.dirname(__FILE__))
CONFIG = YAML.load_file(SPEC_DIR.join("config.yml"))

Dir[SPEC_DIR.join("support", "**", "*.rb")].each {|f| require f}
