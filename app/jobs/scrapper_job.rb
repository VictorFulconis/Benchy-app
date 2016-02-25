class ScrapperJob < ActiveJob::Base
  queue_as :default

  def perform(competitor_id)
    puts "I'm starting the fake job"
    sleep 3
    puts "OK I'm done now"
  end

  # créer un 2ème job dont le job est de lancer le ScrapperJob pour chaque competitor
end
