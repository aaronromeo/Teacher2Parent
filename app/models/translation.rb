class Translation < ActiveRecord::Base
  attr_accessible :language_id, :comment, :feedback_id
  belongs_to :language
end
