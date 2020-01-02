desc "This task is called by the Heroku scheduler add-on"
task :update_db => :environment do
    rake db:drop
    rake db:create
    rake db:migrate
    rake db:seed
    puts "Database Updated."
end