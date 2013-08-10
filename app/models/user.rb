class User < ActiveRecord::Base
  has_many :adhoc_messages
  has_one :student_class, :foreign_key => "teacher_id"
end
