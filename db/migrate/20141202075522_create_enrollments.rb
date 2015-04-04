class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :course, index: true
      t.boolean :approved, default: false
      t.timestamps
    end
  end
end
