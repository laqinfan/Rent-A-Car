class AddPaypalRefToContracts < ActiveRecord::Migration[5.1]
  def change
    add_reference :contracts, :owner_paypal, foreign_key: true
    add_reference :contracts, :renter_paypal, foreign_key: true
  end
end
