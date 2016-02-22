class Ad < ActiveRecord::Base
  belongs_to :competitor
  has_many :pins
end
