class ChangeAttrsToImages < ActiveRecord::Migration
  def up
    remove_column :images, :story
    add_column :images, :album_id, :integer
  end
 
  def down
    remove_column :images, :album_id
    add_column :images, :story, :text
  end
end
