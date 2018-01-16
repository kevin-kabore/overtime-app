# spec/rails_helper.rb

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
require 'capybara/rails'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = false
  config.before do
    DatabaseCleaner.strategy = :transaction
  end
  config.before :each, driver: :selenium do
    DatabaseCleaner.strategy = :truncation
  end
  config.before do
    DatabaseCleaner.start
  end
  config.after :each, driver: :selenium do
    load "#{Rails.root}/db/seeds.rb"
  end
  config.after do
    DatabaseCleaner.clean
  end
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end
