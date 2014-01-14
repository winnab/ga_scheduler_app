class CreateRooms < ActiveRecord::Migration
  def up
    create_table    :rooms do |t|
      t.string  :name
      t.string  :max_occupancy
      t.time  :first_avail_time
      t.time  :last_avail_time
      t.timestamps
    end
  end

  def down
    drop_table :rooms
  end

end
