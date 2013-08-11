class User < ActiveRecord::Base
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
