class AddIsBackupToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_backup, :boolean
  end
end
