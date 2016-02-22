class Dashboard < ActiveRecord::Base
  belongs_to :user
  has_many :pins
  has_many :ads, through: :pins
end
