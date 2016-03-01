
require 'open-uri'
require 'nokogiri'

# Competitor.all.each do |competitor|

# html_doc.search("#{competitor.scraping_parameters}").each do |element|
#   curl element.img.url > element.img.name.jpg
# end

class PharmashopDiscountScraper
  def initialize(competitor)
    @competitor = competitor
  end

  def run
    html_file = open("http://#{@competitor.url}", :allow_redirections => :all)

    html_doc = Nokogiri::HTML(html_file)
    slide_urls = html_doc.to_s.scan(/'(http:\/\/www.pharmashopdiscount.com\/modules\/pm_adsandslideshow\/[^']*slideshow_name=Diaporama1)'/).flatten

    slide_urls.each do |slide_url|
      slide_html_file = open(slide_url)
      slide_html_doc = Nokogiri::HTML(slide_html_file)

      url = slide_html_doc.search("img").attr("src").value
      url = "http://#{@competitor.url}#{url}"

      response = Cloudinary::Uploader.upload(url)
      @competitor.ads.create(cloudinary_public_id: response['public_id'])
    end
  end
end
