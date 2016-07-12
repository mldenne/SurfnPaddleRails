class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image
      t.text :body
      t.integer :author_id
      t.boolean :published

      t.timestamps null: false
    end
  end
end
