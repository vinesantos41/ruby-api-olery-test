require 'bundler/setup'
require 'rake/clean'

CLEAN.include('coverage', 'yardoc')

Dir[File.expand_path('../task/*.rake', __FILE__)].each do |task|
  import(task)
end

task :default => :test
