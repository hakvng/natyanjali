class Expense < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
end
