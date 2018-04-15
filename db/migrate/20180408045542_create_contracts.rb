class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.string :start_date
      t.string :return_date
      t.decimal :price
      t.decimal :subtotal
      t.decimal :total

      t.timestamps
    end
  end
end
