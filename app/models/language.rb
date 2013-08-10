class Language < ActiveRecord::Base

  validates_presence_of :code
  validates_presence_of :name

end
