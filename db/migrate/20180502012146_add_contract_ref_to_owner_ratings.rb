class AddContractRefToOwnerRatings < ActiveRecord::Migration[5.1]
  def change
    add_reference :owner_ratings, :contract, foreign_key: true
  end
end
