class Ad < ActiveRecord::Base
  belongs_to :competitor
  has_many :pins
  has_many :users, through: :competitor
end
