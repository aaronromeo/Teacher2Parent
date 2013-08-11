class Student < ActiveRecord::Base
  attr_accessible :avatar
  attr_accessible :first_name, :last_name, :student_class_id, :gender, :parent_id, :grade, :comment
  has_attached_file :avatar, :styles => { :medium => "200x200#", :thumb => "100x100#" }, :default_url => ActionController::Base.helpers.asset_path("assets/missing_:style.png")

  belongs_to :student_class
  belongs_to :parent, :class_name => "User"

  has_many :subjects

  def name
    "#{first_name} #{last_name}"
  end
end
