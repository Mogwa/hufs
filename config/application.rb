require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Workspace
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :ko

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
    config.autoload_paths += %W(#{config.root}/app/models/dept)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/global)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/global/translation)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/global/liberalarts)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/global/easteurope)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/global/internationalarea)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/global/naturalscience)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/global/engineering)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/global/commerce)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/global/biomed)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/seoul)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/seoul/asia)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/seoul/china)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/seoul/commerce)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/seoul/education)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/seoul/english)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/seoul/japan)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/seoul/socialscience)
    config.autoload_paths += %W(#{config.root}/app/models/dept/major/seoul/western)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/global)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/global/translation)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/global/liberalarts)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/global/easteurope)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/global/internationalarea)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/global/naturalscience)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/global/engineering)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/global/commerce)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/global/biomed)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/seoul)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/seoul/asia)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/seoul/china)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/seoul/commerce)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/seoul/education)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/seoul/english)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/seoul/japan)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/seoul/socialscience)
    config.autoload_paths += %W(#{config.root}/app/models/dept/minor/seoul/western)

#게시판 type
    config.autoload_paths += %W(#{config.root}/app/models/post)
    config.autoload_paths += %W(#{config.root}/app/models/post/global)
    config.autoload_paths += %W(#{config.root}/app/models/post/global/translation)
    config.autoload_paths += %W(#{config.root}/app/models/post/global/liberalarts)
    config.autoload_paths += %W(#{config.root}/app/models/post/global/easteurope)
    config.autoload_paths += %W(#{config.root}/app/models/post/global/internationalarea)
    config.autoload_paths += %W(#{config.root}/app/models/post/global/naturalscience)
    config.autoload_paths += %W(#{config.root}/app/models/post/global/engineering)
    config.autoload_paths += %W(#{config.root}/app/models/post/global/commerce)
    config.autoload_paths += %W(#{config.root}/app/models/post/global/biomed)
    config.autoload_paths += %W(#{config.root}/app/models/post/seoul)
    config.autoload_paths += %W(#{config.root}/app/models/post/seoul/asia)
    config.autoload_paths += %W(#{config.root}/app/models/post/seoul/china)
    config.autoload_paths += %W(#{config.root}/app/models/post/seoul/commerce)
    config.autoload_paths += %W(#{config.root}/app/models/post/seoul/education)
    config.autoload_paths += %W(#{config.root}/app/models/post/seoul/english)
    config.autoload_paths += %W(#{config.root}/app/models/post/seoul/japan)
    config.autoload_paths += %W(#{config.root}/app/models/post/seoul/socialscience)
    config.autoload_paths += %W(#{config.root}/app/models/post/seoul/western)


    
  end
end
