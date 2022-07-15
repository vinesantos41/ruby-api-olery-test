require 'sequel'
require 'sqlite3'

Sequel::Model.plugin :many_through_many

DB = Sequel.connect("sqlite://db/#{ENV['RACK_ENV'] || 'development'}.sqlite3")
