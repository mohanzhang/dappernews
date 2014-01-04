class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.string :username, null: false
      t.integer :upvotes, default: 0

      t.integer :comments_count

      t.timestamps
    end
  end
end
