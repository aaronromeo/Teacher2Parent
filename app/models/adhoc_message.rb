class AdhocMessage < ActiveRecord::Base
  attr_accessible :isNew, :student_id, :recipient_id, :sender_id

  belongs_to :student
  belongs_to :recipient, :class_name => "User", :foreign_key => "recipient_id"
  belongs_to :sender, :class_name => "User", :foreign_key => "sender_id"

  has_and_belongs_to_many :feedbacks

  before_save :set_default_status

  def set_default_status
    self.isNew = true if self.new_record?
    true
  end

  #Add response to message
end
