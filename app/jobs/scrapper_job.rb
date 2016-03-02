class ScrapperJob < ActiveJob::Base
  queue_as :default

  def perform(competitor_id)
    @comp = Competitor.find(competitor_id)
    @scrapper = @comp.scrapper_class.constantize.new(@comp)
    @scrapper.run
  end
end
