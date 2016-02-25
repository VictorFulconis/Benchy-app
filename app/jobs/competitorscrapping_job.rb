class CompetitorscrappingJob < ActiveJob::Base
  queue_as :default

  def perform
    Competitor.all.each do |competitor|
      ScrapperJob.perform_later(competitor.id)
    end
  end
end
