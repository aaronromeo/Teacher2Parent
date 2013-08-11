class Subject < ActiveRecord::Base
  attr_accessible :name, :grade, :student_id, :feedback_id
  belongs_to :student
  belongs_to :feedback
end
