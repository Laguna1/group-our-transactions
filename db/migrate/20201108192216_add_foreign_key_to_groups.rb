class AddForeignKeyToGroups < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key "groups", "users"
  end
end
