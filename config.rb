#####################
# Compass
#####################

# Susy grids in Compass
# First: gem install susy --pre
# require 'susy'

# Change Compass configuration
# compass_config do |config|
# 	config.output_style = :compact
# 	config.sass_options = {:debug_info => true}
# end

#####################
# Page options, layouts, aliases and proxies
#####################

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
# 	page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
# 	:which_fake_page => "Rendering a fake page with a local variable" }

#####################
# Helpers
#####################

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

# Enable automatic deployment to GitHub Pages
# See https://github.com/tvaughan/middleman-deploy
activate :deploy do |deploy|
	deploy.method = :git
	# deploy.after_build = true
	deploy.clean = true
end

# Methods defined in the helpers block are available in templates
# helpers do
# 	def some_helper
# 		"Helping"
# 	end
# end

#####################
# 
#####################

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

activate :directory_indexes

# Build-specific configuration
configure :build do
	# For example, change the Compass output style for deployment
	activate :minify_css

	# Minify Javascript on build
	# activate :sprockets
	activate :minify_javascript

	# Minify HTML
	# activate :minify_html

	# Enable cache buster
	# activate :asset_hash

	# Enable GZIP compression
	# activate :gzip

	# Use relative URLs
	activate :relative_assets

	# Compress PNGs after build
	# First: gem install middleman-smusher
	# require "middleman-smusher"
	# activate :smusher

	# Use a different image path
	# set :http_path, "/Content/images/"
end
