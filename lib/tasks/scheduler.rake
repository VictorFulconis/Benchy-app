desc "This task is called by the Heroku scheduler add-on"
task :scrap do
  CompetitorscrappingJob.perform_later
end
