class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :user_id
      t.integer :course_id
      t.string :name
      t.text :detail
      t.decimal :amount, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
