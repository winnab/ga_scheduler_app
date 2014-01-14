class User < ActiveRecord::Base

  attr_accessible :first_name, :last_name, :email, :role, :title, :bio, :password, :password_confirmation
  
  has_secure_password  
  
  has_and_belongs_to_many :courses

  has_many :led_courses, class_name: 'Course', foreign_key: :lead_instructor_id
  has_many :produced_courses, class_name: 'Course', foreign_key: :producer_id

  # define students as default_scope
  scope :students, -> { where(role: "Student").all }
  scope :instructors, -> { where(role: "Instructor").all }
  scope :producers, -> { where(role: "Producer").all }
  scope :admin, -> { where(role: "Admin").all }

  scope :staff, -> { 
    where(role: ["Producer", "Admin"]).all }

  validates :first_name, presence: true
  validates :last_name, presence: true

  validates :email, presence: true, uniqueness: true
  validates :password, length: { in: 6..20 }, on: :create

  validates :role,  inclusion: { in: %w(Student Instructor Producer Admin), message: "%{value} is not a valid role" }
  
  def role?(role)
    self.role == role.to_s 
  end

  before_destroy do
    if User.where(role: "Admin").count == 1
      errors.add(:role, "User is last admin. Cannot delete user.")
    end
  end

  def full_name
    [self.first_name, self.last_name].join(" ")
  end

end