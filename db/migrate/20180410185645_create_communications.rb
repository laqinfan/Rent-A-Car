class CreateCommunications < ActiveRecord::Migration[5.1]
  def change
    create_table :communications do |t|
      t.timestamps
    end
  end
end
