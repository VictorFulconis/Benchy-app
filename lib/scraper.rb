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
    # html_doc.search(".owl-item img").each do |element|
    #   puts element.attr('src')
    #   response = Cloudinary::Uploader.upload(element.attr('src'))
    #   @competitor.ads.create(cloudinary_public_id: response['public_id'])
    # end
  end
end

# Amazon
# .gw-ftGr-desktop-hero
# .a-carousel-card .cropped-image-map-center-alignment
# .cropped-image-map-center-alignment

# relancer scrapper
# load "lib/scraper.rb"

# exec:
# require "scraper"

# # competitor = Competitor.find(competitor_id)

# competitor = Competitor.find_by_name("amazon")
# scraper = Scraper.new(competitor)
# scraper.run
