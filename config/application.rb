require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog

	class Application < Rails::Application

		config.active_record.raise_in_transactional_callbacks = true
		config.assets.compress = true
		config.assets.compile = true
		config.assets.digest = true
		# config.assets.css_compressor = :yui
		config.assets.js_compressor = :uglifier

	end


end
