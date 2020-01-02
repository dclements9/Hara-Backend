desc "This task is called by the Heroku scheduler add-on"
task :update_db => :environment do
    Rake::Task["db:drop"].execute
    Rake::Task["db:create"].execute
    Rake::Task["db:migrate"].execute
    Rake::Task["db:seed"].execute
    puts "Database Updated."
end