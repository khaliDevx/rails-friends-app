class CreatePosts < ActiveRecord::Migration[7.0]
  def up
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :post_image

      t.timestamps
    end
  end
  def down
    drop_table :posts
  end
end
