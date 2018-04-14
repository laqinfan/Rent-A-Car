class AddMessageRefToCommunications < ActiveRecord::Migration[5.1]
  def change
    add_reference :communications, :message, foreign_key: true
  end
end
