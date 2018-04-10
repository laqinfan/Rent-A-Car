class CreatePaypals < ActiveRecord::Migration[5.1]
  def change
    create_table :paypals do |t|
      t.integer :paypal_id
      t.string :paypal_username
      t.integer :paypal_account_routing_number

      t.timestamps
    end
  end
end
