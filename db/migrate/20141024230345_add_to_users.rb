class AddToUsers < ActiveRecord::Migration
  def change
    add_column :users, :icon, :binary
  end
end
