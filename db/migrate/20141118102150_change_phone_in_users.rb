class ChangePhoneInUsers < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.change :phone, :integer, :limit => 8
    end
  end
 
  def down
    change_table :users do |t|
      t.change :phone, :integer
    end
  end
end
