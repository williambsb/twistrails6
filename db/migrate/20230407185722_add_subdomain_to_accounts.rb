class AddSubdomainToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :subdomain, :string
    add_index :accounts, :subdomain
  end
end
