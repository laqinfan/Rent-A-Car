class AddContractRefToRateRenters < ActiveRecord::Migration[5.1]
  def change
       add_reference :rate_renters, :contract, foreign_key: true
  end
end
