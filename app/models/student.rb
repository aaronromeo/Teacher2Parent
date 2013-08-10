class Student < ActiveRecord::Base
  belongs_to :student_class
  belongs_to :parent, :class_name => "User"
end
