desc "This task is called by the Heroku scheduler add-on"
task :scrap => :environment do
  CompetitorscrappingJob.perform_later
end
