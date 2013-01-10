Gem::Specification.new do |s|
  s.name        = "date-input-rails"
  s.version     = "0.0.3"
  s.authors     = ["John Firebaugh"]
  s.email       = ["john.firebaugh@verbasoftware.com"]
  s.homepage    = "https://github.com/Verba/date-input-rails"
  s.summary     = "Rails support for <input type='date'> with a jQuery UI datepicker polyfill"
  s.description = "Rails support for <input type='date'> with a jQuery UI datepicker polyfill"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "jquery-ui-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "jquery-rails"
  s.add_development_dependency "modernizr"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "combustion", "~> 0.3.1"
  s.add_development_dependency "capybara", ">= 2.0.0.beta"
  s.add_development_dependency "capybara-firebug"
  s.add_development_dependency "chromedriver-helper"
end
