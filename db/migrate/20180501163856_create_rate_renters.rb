class CreateRateRenters < ActiveRecord::Migration[5.1]
  def change
    create_table :rate_renters do |t|
      t.integer :rating

      t.timestamps
    end
  end
end
