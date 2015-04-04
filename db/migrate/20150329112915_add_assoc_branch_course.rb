class AddAssocBranchCourse < ActiveRecord::Migration
  def change
	change_table :courses do |t|
	  t.belongs_to :branch, index: true
  	end
  end
end
