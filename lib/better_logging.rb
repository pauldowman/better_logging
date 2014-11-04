require 'active_support'
require 'better_logging/better_logging'

module BetterLogging
  class Railtie < ::Rails::Railtie
  	begin
    	ACTIVE_SUPPORT_LOGGER = ActiveSupport::Logger
  	rescue
    	ACTIVE_SUPPORT_LOGGER = ActiveSupport::BufferedLogger
  	end
  	ACTIVE_SUPPORT_LOGGER.send(:include, ::PaulDowman::RailsPlugins::BetterLogging)
  end
end
