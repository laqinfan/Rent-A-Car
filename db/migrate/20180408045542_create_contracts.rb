class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.string :start_date
      t.string :return_date
      t.float :price
      t.float :subtotal
      t.float :total

      t.timestamps
    end
  end
end
