require 'open-uri'
require 'nokogiri'

# Competitor.all.each do |competitor|

# html_doc.search("#{competitor.scraping_parameters}").each do |element|
#   curl element.img.url > element.img.name.jpg
# end

class Scraper
  def initialize(competitor)
    @competitor = competitor
  end

  def run
    html_file = open("https://#{@competitor.url}")
    html_doc = Nokogiri::HTML(html_file)
    html_doc.search(".revImg").each do |element|
      response = Cloudinary::Uploader.upload(element.attr('data-src'))
      @competitor.ads.create(cloudinary_public_id: response['public_id'])
    end
    puts '=======>'
    puts @competitor.ads.size
  end
end
# array = []
# html_doc.search(".slotholder img").each do |element|
#   array << element
# end
# puts array
