class Mark < ActiveRecord::Base
  has_many :comments
  validates :lat, :lng, :category, :kind, :state, presence: true
end
