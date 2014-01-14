class Course < ActiveRecord::Base
attr_accessible :name, :category, :description, 
                :min_attendees, :max_attendees, 
                :num_curr_enrolled, 
                :start_date, :end_date, 
                :start_time, :end_time,
                :price, :lead_instructor_id, 
                :producer_id, :room_id

  has_and_belongs_to_many :users

  belongs_to :lead_instructor, class_name: 'User'
  belongs_to :producer, class_name: 'User'

  belongs_to :room
  
end