class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :comments, :posts, :post_id
  end
end
