class AddUserToPaypal < ActiveRecord::Migration[5.1]
  def change
    add_reference :paypals, :user, foreign_key: true
  end
end
