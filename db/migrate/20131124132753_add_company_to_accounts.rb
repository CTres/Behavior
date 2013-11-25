class AddCompanyToAccounts < ActiveRecord::Migration
  def change
  	add_column :accounts, :company, :string
  	add_column :users, :account_owner, :boolean
  end
end
