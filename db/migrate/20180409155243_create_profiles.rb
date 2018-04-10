class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :drivers_license
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :backgroundcheck_status
      t.string :phone
      t.integer :social_security

      t.timestamps
    end
  end
end
