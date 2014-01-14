class CreateCourses < ActiveRecord::Migration
  def up
    create_table    :courses do |t|
      t.string  :name
      t.string  :category
      t.text    :description
      t.integer :lead_instructor_id
      t.integer :producer_id
      t.integer :min_attendees
      t.integer :max_attendees
      t.integer :num_curr_enrolled
      t.date    :start_date
      t.date    :end_date
      t.time  :start_time
      t.time  :end_time
      t.integer :price
      t.integer :room_id
      t.timestamps  
    end
  end

  def down
    drop_table :courses
  end
end
