class AdhocMessage < ActiveRecord::Base
  belongs_to :student
  belongs_to :parent, :class_name => "User", :foreign_key => "parent_id"
  belongs_to :teacher, :class_name => "User", :foreign_key => "teacher_id"

  #Add response to message
end
