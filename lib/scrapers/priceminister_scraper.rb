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
    html_file = open("http://#{@competitor.url}")
    html_doc = Nokogiri::HTML(html_file)

    banners_html = html_doc.to_s.match(/var megaBanHP = (.*)\]\}/m)[1]
    banner_urls = banners_html.scan(/src="([^"]*)"/).flatten

    banner_urls.each do |url|
      response = Cloudinary::Uploader.upload(url)
      @competitor.ads.create(cloudinary_public_id: response['public_id'])
    end
  end
end
