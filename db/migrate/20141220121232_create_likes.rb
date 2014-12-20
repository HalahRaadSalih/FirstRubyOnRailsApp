class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :user_name
      t.integer :idea_id

      t.timestamps
    end
  end
end
