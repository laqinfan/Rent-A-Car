class AddPaypalRefToContracts < ActiveRecord::Migration[5.1]
  def change
    add_reference :contracts, :paypal, foreign_key: true
  end
end
