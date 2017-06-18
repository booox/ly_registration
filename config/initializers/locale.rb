# config/initializers/locale.rb

# Rails.application.config.i18n.default_locale = "zh-CN"

Rails.application.config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
Rails.application.config.i18n.default_locale = :"zh-CN"
