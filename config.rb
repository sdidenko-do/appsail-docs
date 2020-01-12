###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

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
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload, js_host: 'docs.nanobox.local'
  config[:mixpanel_token] = ENV['MIXPANEL_TOKEN_DEV'] || 'mixpanel_token_placeholder'
end

# Navigation Builder
# activate :navtree do |options|
#   options.promote_files = ['index.html.md']
# end

# Syntax Highlighting
activate :syntax

# Breatcrumbs
activate :breadcrumbs

# Pretty URLs
activate :directory_indexes

# Methods defined in the helpers block are available in templates
helpers do
  def nav_article_active(path)
    current_page.url == path ? {:class => "active"} : {}
  end
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'assets/images'

set :build_dir, 'docs'

set :partials_dir, 'partials'

# Using Github Flavored Markdown
set :markdown_engine, :redcarpet
set :markdown, :tables => true, :autolink => true, :gh_blockcode => true, :fenced_code_blocks => true, :strikethrough => true, :with_toc_data => true

# Build-specific configuration
configure :build do

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Mixpanel Token default
  config[:mixpanel_token] = 'mixpanel_token_placeholder'
end
