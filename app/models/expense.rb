class Expense < ActiveRecord::Base
  belongs_to :course
  belongs_to :user

  validates :user_id, presence: true
  validates :course_id, presence: true
  validates :name, presence: true
  validates :amount, presence: true, :numericality => { :greater_than => 0}

end
