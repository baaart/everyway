class Mark < ActiveRecord::Base
  validates :lat, :lon, :category, :kind, :state, presence: true
end
