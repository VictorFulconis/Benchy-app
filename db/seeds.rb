# SEED INITIALE

# user = User.new(
#   email: "a@gmail.com",
#   password: "00000000",
#   first_name: "Bob",
#   last_name: "Morane",
#   company_url: "www.ebay.com",
#   company_name: "Ebay"
#   )
# user.save
# dashboard = Dashboard.new(
#   name: "My first dashboard",
#   user_id: user.id
#   )
# dashboard.save
# competitor = Competitor.new(
#   name: "amazon",
#   url: "www.amazon.fr",
#   scraping_parameters: ""
#   )
# competitor.save
# follow = Follow.new(
#   user_id: user.id,
#   competitor_id: competitor.id
#   )
# follow.save
# images_url = ["k1rb2hq1sh8jqkosvlyi", "duj3gymo2hdseug0ipp5", "dmas2cpdkoyul4o5edhk", "k1rb2hq1sh8jqkosvlyi", "duj3gymo2hdseug0ipp5", "dmas2cpdkoyul4o5edhk"]
# images_url.each do |image|
#   Ad.create(
#     cloudinary_public_id: image,
#     competitor_id: competitor.id
#     )
# end
# competitor = Competitor.new(
#   name: "cdiscount",
#   url: "www.cdiscount.fr",
#   scraping_parameters: ""
#   )
# competitor.save
# follow = Follow.new(
#   user_id: user.id,
#   competitor_id: competitor.id
#   )
# follow.save
# images_url = ["xrstfgeajkfiixvpc96w", "usxmzix6pd227l015yvc", "kdzkhmbbew68icdk2dhq", "xrstfgeajkfiixvpc96w", "usxmzix6pd227l015yvc", "kdzkhmbbew68icdk2dhq"]
# images_url.each do |image|
#   Ad.create(
#     cloudinary_public_id: image,
#     competitor_id: competitor.id
#     )
# end
# competitor = Competitor.new(
#   name: "fnac",
#   url: "www.fnac.com",
#   scraping_parameters: ""
#   )
# competitor.save
# follow = Follow.new(
#   user_id: user.id,
#   competitor_id: competitor.id
#   )
# follow.save
# images_url = ["xq8xikstorlorfqtfw7e", "emqkw3er7sttudrvwpqw", "sxnod6hxgmtyzyy0xrbz"]
# images_url.each do |image|
#   Ad.create(
#     cloudinary_public_id: image,
#     competitor_id: competitor.id
#     )
# end
# competitor = Competitor.new(
#   name: "priceminister",
#   url: "www.priceminister.com",
#   scraping_parameters: ""
#   )
# competitor.save
# follow = Follow.new(
#   user_id: user.id,
#   competitor_id: competitor.id
#   )
# follow.save
# images_url = ["w0sxnslu8eanvnzckzr4", "zrlvikuofxbzd6kisr6t", "jw8u1zz2khhokqp5owzh"]
# images_url.each do |image|
#   Ad.create(
#     cloudinary_public_id: image,
#     competitor_id: competitor.id
#     )
# end
# Ad.first(10).each do |ad|
#   Pin.create(
#     ad_id: ad.id,
#     dashboard_id: dashboard.id
#     )
# end

# user = User.new(
#   email: "teammember1@gmail.com",
#   password: "11111111",
#   first_name: "John",
#   last_name: "Stone",
#   company_url: "www.ebay.com",
#   company_name: "Ebay"
#   )
# user.save
# user = User.new(
#   email: "teammember2@gmail.com",
#   password: "11111111",
#   first_name: "Jean",
#   last_name: "Pierre",
#   company_url: "www.ebay.com",
#   company_name: "Ebay"
#   )
# user.save


# user = User.new(
#   email: "b@gmail.com",
#   password: "aaaabbbb",
#   first_name: "Bob",
#   last_name: "Morane",
#   company_url: "www.ebay.com",
#   company_name: "Ebay"
#   )
# user.save
# dashboard = Dashboard.new(
#   name: "My second dashboard",
#   user_id: user.id
#   )
# dashboard.save
# competitor = Competitor.new(
#   name: "amazon",
#   url: "www.amazon.fr",
#   scraping_parameters: ""
#   )
# competitor.save
# follow = Follow.new(
#   user_id: user.id,
#   competitor_id: competitor.id
#   )
# follow.save
# images_url = ["k1rb2hq1sh8jqkosvlyi", "duj3gymo2hdseug0ipp5", "dmas2cpdkoyul4o5edhk"]
# images_url.each do |image|
#   Ad.create(
#     cloudinary_public_id: image,
#     competitor_id: competitor.id
#     )
# end
# competitor = Competitor.new(
#   name: "cdiscount",
#   url: "www.cdiscount.fr",
#   scraping_parameters: ""
#   )
# competitor.save
# follow = Follow.new(
#   user_id: user.id,
#   competitor_id: competitor.id
#   )
# follow.save
# images_url = ["xrstfgeajkfiixvpc96w", "usxmzix6pd227l015yvc", "kdzkhmbbew68icdk2dhq"]
# images_url.each do |image|
#   Ad.create(
#     cloudinary_public_id: image,
#     competitor_id: competitor.id
#     )
# end
# competitor = Competitor.new(
#   name: "fnac",
#   url: "www.fnac.fr",
#   scraping_parameters: ""
#   )
# competitor.save
# follow = Follow.new(
#   user_id: user.id,
#   competitor_id: competitor.id
#   )
# follow.save
# images_url = ["xq8xikstorlorfqtfw7e", "emqkw3er7sttudrvwpqw", "sxnod6hxgmtyzyy0xrbz"]
# images_url.each do |image|
#   Ad.create(
#     cloudinary_public_id: image,
#     competitor_id: competitor.id
#     )
# end
# competitor = Competitor.new(
#   name: "priceminister",
#   url: "www.priceminister.fr",
#   scraping_parameters: ""
#   )
# competitor.save
# follow = Follow.new(
#   user_id: user.id,
#   competitor_id: competitor.id
#   )
# follow.save
# images_url = ["w0sxnslu8eanvnzckzr4", "zrlvikuofxbzd6kisr6t", "jw8u1zz2khhokqp5owzh"]
# images_url.each do |image|
#   Ad.create(
#     cloudinary_public_id: image,
#     competitor_id: competitor.id
#     )
# end
# Ad.first(10).each do |ad|
#   Pin.create(
#     ad_id: ad.id,
#     dashboard_id: dashboard.id
#     )
# end

# IMPROVED SEED
#
#
user = User.new(
  email: "victor.fulconis@1001pharmacies.com",
  password: "aaaaaaaa",
  first_name: "victor",
  last_name: "fulconis",
  company_url: "www.1001pharmacies.com",
  company_name: "1001Pharmacies",
  )
user.save
competitor = Competitor.new(
  name: "1001Pharmacies",
  url: "www.1001pharmacies.com",
  scrapper_class: "MilleUnePharmaciesScraper",
  )
competitor.save
Follow.create(
  user_id: user.id,
  competitor_id: competitor.id
  )
follow.save
competitor = Competitor.new(
  name: "Easy parapharmacie",
  url: "www.easyparapharmacie.com",
  scrapper_class: "EasyParapharmacieScraper",
  )
competitor.save
Follow.create(
  user_id: user.id,
  competitor_id: competitor.id,
  )
competitor = Competitor.new(
  name: "Parashop",
  url: "www.parashop.com",
  scrapper_class: "ParashopScraper",
  )
competitor.save
Follow.create(
  user_id: user.id,
  competitor_id: competitor.id,
  )
competitor = Competitor.new(
  name: "Pharmashopdiscount",
  url: "www.pharmashopdiscount.com",
  scrapper_class: "PharmashopDiscountScraper",
  )
competitor.save
Follow.create(
  user_id: user.id,
  competitor_id: competitor.id,
  )
competitor = Competitor.new(
  name: "Powersante",
  url: "www.powersante.com",
  scrapper_class:"PowerSanteScraper",
  )
competitor.save
Follow.create(
  user_id: user.id,
  competitor_id: competitor.id,
  )
competitor = Competitor.new(
  name: "UniversPara",
  url: "www.universpara.com",
  scrapper_class: "UniversParaScraper",
  )
competitor.save
Follow.create(
  user_id: user.id,
  competitor_id: competitor.id,
  )
User.create(
  email: "chloe.martin@1001pharmacies.com",
  password: "aaaaaaaa",
  first_name: "chloe",
  last_name: "martin",
  company_url: "www.1001pharmacies.com",
  company_name: "1001Pharmacies",
  )
User.create(
  email: "jean.dupont@1001pharmacies.com",
  password: "aaaaaaaa",
  first_name: "jean",
  last_name: "dupont",
  company_url: "www.1001pharmacies.com",
  company_name: "1001Pharmacies",
  )
User.create(
  email: "graphistes@1001pharmacies.com",
  password: "aaaaaaaa",
  first_name: "Graphistes",
  last_name: "1001pharmacies",
  company_url: "www.1001pharmacies.com",
  company_name: "1001Pharmacies",
  )
User.create(
  email: "commerciaux@1001pharmacies.com",
  password: "aaaaaaaa",
  first_name: "commerciaux",
  last_name: "1001pharmacies",
  company_url: "www.1001pharmacies.com",
  company_name: "1001Pharmacies",
  )
User.create(
  email: "admin@benchy.com",
  password: "aaaabbbb",
  first_name: "admin",
  last_name: "Benchy",
  company_url: "www.benchy.me",
  company_name: "Benchy",
  )

