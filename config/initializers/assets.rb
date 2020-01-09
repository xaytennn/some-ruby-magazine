# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w[bootstrap.scss]
Rails.application.config.assets.precompile += %w[style.scss]
Rails.application.config.assets.precompile += %w[memenu.scss]
Rails.application.config.assets.precompile += %w[flexslider.scss]
Rails.application.config.assets.precompile += %w[mystyle.scss]

Rails.application.config.assets.precompile += %w[jquery-1.11.0.min.js]
Rails.application.config.assets.precompile += %w[simpleCart.min.js]
Rails.application.config.assets.precompile += %w[memenu.js]
Rails.application.config.assets.precompile += %w[jquery.easydropdown.js]
Rails.application.config.assets.precompile += %w[responsiveslides.min.js]
Rails.application.config.assets.precompile += %w[imagezoom.js]
Rails.application.config.assets.precompile += %w[jquery.flexslider.js]
Rails.application.config.assets.precompile += %w[bootstrap.min.js]
Rails.application.config.assets.precompile += %w[glyphicons-halflings.eot]
Rails.application.config.assets.precompile += %w[glyphicons-halflings.ttf]
Rails.application.config.assets.precompile += %w[glyphicons-halflings.woff]
Rails.application.config.assets.precompile += %w[glyphicons-halflings.woff2]
Rails.application.config.assets.precompile += %w[glyphicons-halflings.svg]
Rails.application.config.assets.precompile += %w[typeahead.bundle.js]
Rails.application.config.assets.precompile += %w[easydrop.js]
Rails.application.config.assets.precompile += %w[mem.js]
Rails.application.config.assets.precompile += %w[responsive.js]
Rails.application.config.assets.precompile += %w[flexs.js]
