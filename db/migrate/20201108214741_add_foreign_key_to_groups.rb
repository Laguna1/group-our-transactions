class AddForeignKeyToGroups < ActiveRecord::Migration[5.2]
  def change
    add_index :groups, :user_id
  end
end
