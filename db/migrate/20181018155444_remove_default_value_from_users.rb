class RemoveDefaultValueFromUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:users, :encrypted_password, '')
  end
end
