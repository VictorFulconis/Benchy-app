class Ad < ActiveRecord::Base
  belongs_to :competitor
  has_many :pins
  has_many :users, through: :competitor

  def self.search(query)
    if query.blank?
      all
    else
      joins(:competitor).where("competitors.name ilike ?", "%#{query}%")
    end
  end
end

