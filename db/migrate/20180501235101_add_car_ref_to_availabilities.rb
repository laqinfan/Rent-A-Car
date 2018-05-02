class AddCarRefToAvailabilities < ActiveRecord::Migration[5.1]
  def change
    add_reference :availabilities, :car, foreign_key: true
  end
end
