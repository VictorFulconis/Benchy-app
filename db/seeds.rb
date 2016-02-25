# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



user = User.new(
  email: "a@gmail.com",
  password: "00000000",
  first_name: "Bob",
  last_name: "Morane",
  company_url: "www.ebay.com",
  company_name: "Ebay"
  )
user.save
dashboard = Dashboard.new(
  name: "My first dashboard",
  user_id: user.id
  )
dashboard.save
competitor = Competitor.new(
  name: "amazon",
  url: "www.amazon.fr",
  scraping_parameters: ""
  )
competitor.save
follow = Follow.new(
  user_id: user.id,
  competitor_id: competitor.id
  )
follow.save
images_url = ["k1rb2hq1sh8jqkosvlyi", "duj3gymo2hdseug0ipp5", "dmas2cpdkoyul4o5edhk"]
images_url.each do |image|
  Ad.create(
    url: image,
    competitor_id: competitor.id
    )
end
competitor = Competitor.new(
  name: "cdiscount",
  url: "www.cdiscount.fr",
  scraping_parameters: ""
  )
competitor.save
follow = Follow.new(
  user_id: user.id,
  competitor_id: competitor.id
  )
follow.save
images_url = ["xrstfgeajkfiixvpc96w", "usxmzix6pd227l015yvc", "kdzkhmbbew68icdk2dhq"]
images_url.each do |image|
  Ad.create(
    url: image,
    competitor_id: competitor.id
    )
end
competitor = Competitor.new(
  name: "fnac",
  url: "www.fnac.fr",
  scraping_parameters: ""
  )
competitor.save
follow = Follow.new(
  user_id: user.id,
  competitor_id: competitor.id
  )
follow.save
images_url = ["xq8xikstorlorfqtfw7e", "emqkw3er7sttudrvwpqw", "sxnod6hxgmtyzyy0xrbz"]
images_url.each do |image|
  Ad.create(
    url: image,
    competitor_id: competitor.id
    )
end
competitor = Competitor.new(
  name: "priceminister",
  url: "www.priceminister.fr",
  scraping_parameters: ""
  )
competitor.save
follow = Follow.new(
  user_id: user.id,
  competitor_id: competitor.id
  )
follow.save
images_url = ["w0sxnslu8eanvnzckzr4", "zrlvikuofxbzd6kisr6t", "jw8u1zz2khhokqp5owzh"]
images_url.each do |image|
  Ad.create(
    url: image,
    competitor_id: competitor.id
    )
end
Ad.first(4).each do |ad|
  Pin.create(
    ad_id: ad.id,
    dashboard_id: dashboard.id
    )
end

user = User.new(
  email: "b@gmail.com",
  password: "aaaabbbb",
  first_name: "Bob",
  last_name: "Morane",
  company_url: "www.ebay.com",
  company_name: "Ebay"
  )
user.save
dashboard = Dashboard.new(
  name: "My first dashboard",
  user_id: user.id
  )
dashboard.save
competitor = Competitor.new(
  name: "amazon",
  url: "www.amazon.fr",
  scraping_parameters: ""
  )
competitor.save
follow = Follow.new(
  user_id: user.id,
  competitor_id: competitor.id
  )
follow.save
images_url = ["k1rb2hq1sh8jqkosvlyi", "duj3gymo2hdseug0ipp5", "dmas2cpdkoyul4o5edhk"]
images_url.each do |image|
  Ad.create(
    url: image,
    competitor_id: competitor.id
    )
end
competitor = Competitor.new(
  name: "cdiscount",
  url: "www.cdiscount.fr",
  scraping_parameters: ""
  )
competitor.save
follow = Follow.new(
  user_id: user.id,
  competitor_id: competitor.id
  )
follow.save
images_url = ["xrstfgeajkfiixvpc96w", "usxmzix6pd227l015yvc", "kdzkhmbbew68icdk2dhq"]
images_url.each do |image|
  Ad.create(
    url: image,
    competitor_id: competitor.id
    )
end
competitor = Competitor.new(
  name: "fnac",
  url: "www.fnac.fr",
  scraping_parameters: ""
  )
competitor.save
follow = Follow.new(
  user_id: user.id,
  competitor_id: competitor.id
  )
follow.save
images_url = ["xq8xikstorlorfqtfw7e", "emqkw3er7sttudrvwpqw", "sxnod6hxgmtyzyy0xrbz"]
images_url.each do |image|
  Ad.create(
    url: image,
    competitor_id: competitor.id
    )
end
competitor = Competitor.new(
  name: "priceminister",
  url: "www.priceminister.fr",
  scraping_parameters: ""
  )
competitor.save
follow = Follow.new(
  user_id: user.id,
  competitor_id: competitor.id
  )
follow.save
images_url = ["w0sxnslu8eanvnzckzr4", "zrlvikuofxbzd6kisr6t", "jw8u1zz2khhokqp5owzh"]
images_url.each do |image|
  Ad.create(
    url: image,
    competitor_id: competitor.id
    )
end
Ad.first(4).each do |ad|
  Pin.create(
    ad_id: ad.id,
    dashboard_id: dashboard.id
    )
end
