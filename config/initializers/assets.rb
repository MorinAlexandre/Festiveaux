# Be sure to restart your servegit r when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css.scss, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w(metisMenu.min.css)
Rails.application.config.assets.precompile += %w(font-awesome.min.css)
Rails.application.config.assets.precompile += %w(timeline.css)
Rails.application.config.assets.precompile += %w(sb-admin-2.css)
Rails.application.config.assets.precompile += %w(morris.css)
Rails.application.config.assets.precompile += %w(metisMenu.min.js)
Rails.application.config.assets.precompile += %w(raphael-min.js)
Rails.application.config.assets.precompile += %w(morris.min.js)
Rails.application.config.assets.precompile += %w(morris-data.js)
Rails.application.config.assets.precompile += %w( connexion )
Rails.application.config.assets.precompile += %w(sb-admin-2.js)
Rails.application.config.assets.precompile += %w( bootstrap_sb_admin_base_v2.css )