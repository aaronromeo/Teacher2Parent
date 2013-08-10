class Language < ActiveRecord::Base

  validates_presence_of :code
  validates_presence_of :english_name
  validates_presence_of :native_name

end
