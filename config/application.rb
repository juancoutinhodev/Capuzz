# config/application.rb

require_relative "boot"
require "rails/all"

# Require the gems listed in Gemfile, including any gems
# in groups you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Capuzz
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1 # Or whatever your version is

    # ... other configurations ...

    # ==> ADD THESE LINES <==
    # Whitelist the locales available for the application
    config.i18n.available_locales = [:en, :"pt-BR"]

    # Set default locale to something other than :en
    config.i18n.default_locale = :"pt-BR"
    # =======================

  end
end