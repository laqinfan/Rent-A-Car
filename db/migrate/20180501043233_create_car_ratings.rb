class CreateCarRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :car_ratings do |t|
      t.integer :rating
      t.string :comments

      t.timestamps
    end
  end
end
