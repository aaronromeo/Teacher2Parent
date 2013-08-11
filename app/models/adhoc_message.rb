class AdhocMessage < ActiveRecord::Base
  belongs_to :student
  belongs_to :recipient, :class_name => "User", :foreign_key => "recipient_id"
  belongs_to :sender, :class_name => "User", :foreign_key => "sender_id"

  has_and_belongs_to_many :feedbacks
  #Add response to message
end
