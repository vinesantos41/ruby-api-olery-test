desc 'Runs all the tests'
task :test do
  sh 'sequel -m db/migrations sqlite://db/test.sqlite3'
  sh 'rspec spec'
end
