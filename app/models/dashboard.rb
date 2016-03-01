class Dashboard < ActiveRecord::Base
  belongs_to :user
  has_many :pins, dependent: :destroy
  has_many :ads, through: :pins
  has_many :shares, dependent: :destroy
end
