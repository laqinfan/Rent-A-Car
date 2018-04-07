class AddAddressRefToCars < ActiveRecord::Migration[5.1]
  def change
    add_reference :cars, :address, foreign_key: true
  end
end
