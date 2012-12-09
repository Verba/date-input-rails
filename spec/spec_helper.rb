require 'rubygems'
require 'bundler'
require 'rails'

Bundler.require :default, :development

require 'capybara/rspec'

Combustion.initialize! :action_controller, :active_model, :action_view, :sprockets

require 'rspec/rails'
require 'capybara/rails'
require 'capybara/firebug'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.register_driver :firefox do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.enable_firebug
  Capybara::Selenium::Driver.new(app, :browser => :firefox, :profile => profile)
end
