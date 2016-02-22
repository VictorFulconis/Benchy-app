# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



@user = User.new (
  email: "test@gmail.com",
  password: "00000000",
  first_name: "Bob",
  last_name: "Morane",
  company_url: "www.ebay.com",
  company_name: "Ebay"
  )
@user.save!
@competitor = Competitor.new (
  name: "amazon",
  url: "www.amazon.fr",
  scraping_parameters: ""
  )
@competitor.save!
@follow = Follow.new (
  user_id: @user.id,
  competitor_id: @competitor.id
  )
@follow.save!
images_url = []
images_url.each do |image|
  Add.new (

    )
