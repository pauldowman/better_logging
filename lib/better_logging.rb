require 'active_support'
require 'better_logging/better_logging'

module BetterLogging
  class Railtie < ::Rails::Railtie
    ActiveSupport::BufferedLogger.send(:include, ::PaulDowman::RailsPlugins::BetterLogging)
  end
end
