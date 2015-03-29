class AddAssocBranchWithUser < ActiveRecord::Migration
  def change
	change_table :enrollments do |t|
	  t.belongs_to :branch, index: true
  	end
  end
end
