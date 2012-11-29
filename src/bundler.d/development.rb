# load the test group first
dir = File.expand_path(File.dirname(__FILE__))
self.instance_eval(Bundler.read_file("#{dir}/bundler.d/test.rb"))

group :development do
  # code documentation
  gem 'yard', '>= 0.5.3'

  # for apipie generation
  gem 'redcarpet'

  # generates routes in javascript
  gem "js-routes", :require => 'js_routes'

  # for generating i18n files - TODO do we need ruby_parser here?
  gem 'gettext', '>= 1.9.3', :require => false
    gem 'ruby_parser'
      gem 'sexp_processor'
end
