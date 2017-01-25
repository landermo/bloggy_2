class RenameTaggingToTag < ActiveRecord::Migration
  def change
    rename_table :taggings, :tag
  end
end
