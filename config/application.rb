require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BookManager
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.generators do |g|
      g.template_engine :haml
      g.test_framework  :rspec, fixture: false
      g.helper_specs    false
      g.fixture_replacement :factory_bot
    end

    config.time_zone = 'Moscow'

  end
end
