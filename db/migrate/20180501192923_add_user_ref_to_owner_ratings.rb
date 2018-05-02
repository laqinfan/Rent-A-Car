class AddUserRefToOwnerRatings < ActiveRecord::Migration[5.1]
  def change
    add_reference :owner_ratings, :user, foreign_key: true
    add_reference :owner_ratings, :owner, foreign_key: true
  end
end
