class AddCanLoginToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :can_login, :boolean
  end
end
