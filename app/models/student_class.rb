class StudentClass < ActiveRecord::Base
  attr_accessible :name, :teacher_id

  validates_presence_of :name

  has_many :students
  belongs_to :teacher, :class_name => "User"
end
