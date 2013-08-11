class Language < ActiveRecord::Base
  attr_accessible :code, :english_name, :native_name

  validates_presence_of :code
  validates_presence_of :english_name
  validates_presence_of :native_name

end
