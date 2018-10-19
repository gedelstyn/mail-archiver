class AddColsToImap < ActiveRecord::Migration[5.2]
  def change
    add_column :imap_providers, :name, :string
    add_column :imap_providers, :server, :string
    add_column :imap_providers, :port, :integer
    add_column :imap_providers, :ssl, :boolean
  end
end
