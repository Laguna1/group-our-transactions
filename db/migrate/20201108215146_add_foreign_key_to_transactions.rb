class AddForeignKeyToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_index :transactions, :user_id
    add_foreign_key :transactions, :users
  end
end
