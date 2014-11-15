class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :text
    add_column :users, :phone, :integer
    add_column :users, :sex, :string
    add_column :users, :dob, :date
    add_column :users, :school, :string
    add_column :users, :school_class, :string
    add_column :users, :f_name, :string
    add_column :users, :f_occupation, :string
    add_column :users, :m_name, :string
    add_column :users, :m_occupation, :string
    add_column :users, :dance_school, :string
    add_column :users, :dance_teacher, :string
    add_column :users, :dance_years, :integer
    add_column :users, :g_name, :string
    add_column :users, :place, :string
  end
end
