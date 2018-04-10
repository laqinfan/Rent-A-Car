class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :status
      t.belongs_to :address, index: true
      t.references :addressable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
