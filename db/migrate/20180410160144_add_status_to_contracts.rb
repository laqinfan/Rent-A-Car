class AddStatusToContracts < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :status, :string
    add_column :contracts, :string, :string
  end
end
