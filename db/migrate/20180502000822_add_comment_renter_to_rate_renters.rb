class AddCommentRenterToRateRenters < ActiveRecord::Migration[5.1]
  def change
    add_column :rate_renters, :comment, :string
  end
end
