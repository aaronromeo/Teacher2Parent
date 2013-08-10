class Feedback < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :comment
  # validates_inclusion_of :criteria, :in => %w( ??? )
  validates_inclusion_of :gender, :in => %w( m f )

  has_many :translations

  has_and_belongs_to_many :feedback

end
