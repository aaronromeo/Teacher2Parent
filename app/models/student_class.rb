class StudentClass < ActiveRecord::Base

  validates_presence_of :name

  has_many :students
  belongs_to :teacher, :class_name => "User"
end
