require 'bundler/setup'
require 'rspec'
require 'rack/test'
require 'factory_girl'
require 'faker'

ENV['RACK_ENV'] = 'test'

require_relative '../config/application'

RSpec.configure do |config|
  config.color = true

  config.include Rack::Test::Methods, :type => :request
  config.include FactoryGirl::Syntax::Methods

  FactoryGirl.define do
    to_create { |instance| instance.save }
  end

  FactoryGirl.definition_file_paths = ['./spec/factories']
  FactoryGirl.find_definitions

  config.around(:each) do |example|
    DB.transaction(:rollback=>:always, :auto_savepoint=>true){example.run}
  end

  def app
    Olery::V1::Server
  end
end
