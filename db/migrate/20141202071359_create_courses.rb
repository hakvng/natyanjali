class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.decimal :fee
      t.integer :period

      t.timestamps
    end
  end
end
