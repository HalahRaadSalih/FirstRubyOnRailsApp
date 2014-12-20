class ModifyUserNameToId < ActiveRecord::Migration
  def change
    add_column :likes, :user_id, :integer
    remove_column :likes, :user_name, :string
  end
end
