class User < ActiveRecord::Base
  attr_accessible :avatar, :first_name, :last_name, :language_id, :gender, :role, :email, :password
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :adhoc_messages
  has_one :student_class, :foreign_key => "teacher_id"
  has_many :students, :foreign_key => "parent_id"

  belongs_to :language

  def name
    "#{first_name} #{last_name}"
  end
end
