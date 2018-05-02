class AddUserRefToCarRatings < ActiveRecord::Migration[5.1]
  def change
    add_reference :car_ratings, :user, foreign_key: true
  end
end
