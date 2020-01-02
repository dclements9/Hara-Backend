desc "This task is called by the Heroku scheduler add-on"
task :update_db => :environment do
    rake db:schema:load DISABLE_DATABASE_ENVIRONMENT_CHECK=1
    rake db:migrate
    rake db:seed
    puts "Database Updated."
end