class CreateCoursesUsers < ActiveRecord::Migration
  def up
    create_table :courses_users do |t|
      t.belongs_to :course
      t.belongs_to :user
    end
  end

  def down
  end
end
