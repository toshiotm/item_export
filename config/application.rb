require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ItemExport
  class Application < Rails::Application
      config.active_record.raise_in_transactional_callbacks = true

      config.time_zone = 'Tokyo'
      config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '** ', '*.{rb,yml}').to_s]
      config.i18n.default_locale = :ja
      config.generators do |g|
          g.helper false
          g.assets false
          g.test_framework :rspec
          g.controller_specs false
          g.view_specs false
      end

  end
end
