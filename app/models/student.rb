class Student < ActiveRecord::Base
  belongs_to :student_class
  belongs_to :parent, :class_name => "User"

  def name
    "#{first_name} #{last_name}"
  end
end
