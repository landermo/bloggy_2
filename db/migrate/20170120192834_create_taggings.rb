class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
