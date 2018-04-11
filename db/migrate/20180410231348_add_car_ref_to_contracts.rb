class AddCarRefToContracts < ActiveRecord::Migration[5.1]
  def change
    add_reference :contracts, :car, foreign_key: true
  end
end
