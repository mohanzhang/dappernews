class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :item_id, null: false
      t.integer :parent_id   # for acts_as_tree

      t.string :username, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
