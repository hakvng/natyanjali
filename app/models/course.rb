class Course < ActiveRecord::Base
  has_many :users, through: :enrollments
  has_many :expenses

  validates :name, presence: true
  validates :period, presence: true
  validates :fee, presence: true

end
