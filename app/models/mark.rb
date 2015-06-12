class Mark < ActiveRecord::Base
  validates :lat, :lon, :category, :type, :state, presence: true
end
