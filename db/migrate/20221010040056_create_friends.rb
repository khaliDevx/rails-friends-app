class CreateFriends < ActiveRecord::Migration[7.0]
  def up
    create_table :friends do |t|
      t.string "first_name", :limit=> 10, :null=> false
      t.string "last_name", :limit=> 10
      t.integer "age"
      t.string "phone"
      t.string "email"
      t.string "twitter"
      t.timestamps
    end
  end

  def down
    drop_table :friends
  end
end
