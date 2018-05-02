class AddCarRefToCarRatings < ActiveRecord::Migration[5.1]
  def change
    add_reference :car_ratings, :car, foreign_key: true
  end
end
