desc 'Seeds the db'

task :seed do
    require_relative '../config/application'

    puts 'Generating data..'
    ['Company 1', 'Company 2', 'Company 3' ].each do |name|
      DB[:contracts].insert({ name: name, start_date: Time.now })
    end

    ['User 1', 'User 2', 'User 3' ].each do |name|
      DB[:users].insert({ name: name, email: "#{name}@email.com" })
    end
end
