class AddRecieverRefToCommunications < ActiveRecord::Migration[5.1]
  def change
    add_reference :communications, :reciever, foreign_key: true
  end
end
