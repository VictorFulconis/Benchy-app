class Ad < ActiveRecord::Base
  belongs_to :competitor
  has_many :pins
  has_many :users, through: :competitor

  def self.search(query)
    if query[:name] == ""
      all
    else
      where("name = ?", query[:name])
    end
  end
end

