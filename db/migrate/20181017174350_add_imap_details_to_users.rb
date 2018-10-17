class AddImapDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :imap_password, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
