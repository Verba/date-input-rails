Gem::Specification.new do |s|
  s.name        = "date-input-rails"
  s.version     = "0.0.1"
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
end
