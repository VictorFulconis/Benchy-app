class Pin < ActiveRecord::Base
  belongs_to :dashboard
  belongs_to :ad
end
