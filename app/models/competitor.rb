class Competitor < ActiveRecord::Base
  has_many :follows
  has_many :users, through: :follows
  has_many :ads
end
