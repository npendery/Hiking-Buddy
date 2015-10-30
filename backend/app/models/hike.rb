class Hike < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  validates :location, presence: true
end
