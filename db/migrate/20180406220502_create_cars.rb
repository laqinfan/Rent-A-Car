class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.string :description
      t.string :category
      t.string :mileage
      t.integer :number_of_seats
      t.decimal :price_per_day, precision: 10, scale: 2

      t.timestamps
    end
  end
end
