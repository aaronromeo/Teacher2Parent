class Interaction < ActiveRecord::Base
  belongs_to :initiated_by
  has_many :feedback
end
