class Room < ActiveRecord::Base
  attr_accessible :name, :max_occupancy, :first_avail_time, :last_avail_time
  has_many :courses
end