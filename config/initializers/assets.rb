# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

Rails.application.config.assets.precompile += %w( index.scss )
Rails.application.config.assets.precompile += %w( registration.scss )
Rails.application.config.assets.precompile += %w( admin.scss )
Rails.application.config.assets.precompile += %w( products.scss )
Rails.application.config.assets.precompile += %w( product_detail.scss )
Rails.application.config.assets.precompile += %w( cart.scss )
Rails.application.config.assets.precompile += %w( checkout.scss )
Rails.application.config.assets.precompile += %w( map.scss )