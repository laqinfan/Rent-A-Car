class AddSenderRefToCommunications < ActiveRecord::Migration[5.1]
  def change
    add_reference :communications, :sender, foreign_key: true
  end
end
