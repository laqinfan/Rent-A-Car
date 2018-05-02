class CreateAvailabilities < ActiveRecord::Migration[5.1]
  def change
    create_table :availabilities do |t|
      t.string :start
      t.string :end
      t.string :status

      t.timestamps
    end
  end
end
