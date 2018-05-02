class CreateOwnerRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :owner_ratings do |t|
      t.integer :rating
      t.string :comment

      t.timestamps
    end
  end
end
