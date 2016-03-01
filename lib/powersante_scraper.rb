require 'open-uri'
require 'nokogiri'

# Competitor.all.each do |competitor|

# html_doc.search("#{competitor.scraping_parameters}").each do |element|
#   curl element.img.url > element.img.name.jpg
# end

class PowerSanteScraper
  def initialize(competitor)
    @competitor = competitor
  end

  def run
    html_file = open("http://#{@competitor.url}", :allow_redirections => :all)
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search(".slides img").each do |element|
      response = Cloudinary::Uploader.upload(element.attr('src'))
      @competitor.ads.create(cloudinary_public_id: response['public_id'])
    end
  end
end
