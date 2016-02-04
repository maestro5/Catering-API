require 'rubygems'
require 'spork'

Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'rspec/autorun'
  require 'webmock/rspec'

  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  # Checks for pending migrations before tests are run.
  # If you are not using ActiveRecord, you can remove this line.
  ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

  RSpec.configure do |config|
    config.use_transactional_fixtures = false

    config.infer_base_class_for_anonymous_controllers = false

    config.order = "random"

    config.before(:suite) do
      DatabaseCleaner.strategy = :transaction
      DatabaseCleaner.clean_with(:deletion)
    end

    config.before(:each) do
      DatabaseCleaner.strategy = example.metadata[:type] == :feature ? :deletion : :transaction
      DatabaseCleaner.start
    end

    config.after(:each) do
      DatabaseCleaner.clean
    end

    config.before(:all) do
      WebMock.disable_net_connect! :allow_localhost => true
    end

    config.after(:all, type: :request) do
      WebMock.disable_net_connect! :allow_localhost => false
    end

    config.expect_with :rspec do |expectations|
      # This option will default to `true` in RSpec 4. It makes the `description`
      # and `failure_message` of custom matchers include text for helper methods
      # defined using `chain`, e.g.:
      #     be_bigger_than(2).and_smaller_than(4).description
      #     # => "be bigger than 2 and smaller than 4"
      # ...rather than:
      #     # => "be bigger than 2"
      expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    end

    # rspec-mocks config goes here. You can use an alternate test double
    # library (such as bogus or mocha) by changing the `mock_with` option here.
    config.mock_with :rspec do |mocks|
      # Prevents you from mocking or stubbing a method that does not exist on
      # a real object. This is generally recommended, and will default to
      # `true` in RSpec 4.
      mocks.verify_partial_doubles = true
    end
  end
end

Spork.each_run do
  FactoryGirl.reload
end