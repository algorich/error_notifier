# Configure Rails Environment
ENV["RAILS_ENV"] = "test"


require File.expand_path("../dummy/config/environment.rb",  __FILE__)

require 'rspec/rails'

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# Load fixtures from the engine
if ActiveSupport::TestCase.method_defined?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path("../fixtures", __FILE__)
end

RSpec.configure do |config|
	config.infer_base_class_for_anonymous_controllers = true
end
