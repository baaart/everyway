class Mark < ActiveRecord::Base
  validates :lat, :lng, :category, :kind, :state, presence: true
end
