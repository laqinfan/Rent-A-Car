class AddUser1RefToConversations < ActiveRecord::Migration[5.1]
  def change
    add_reference :conversations, :user1, foreign_key: true
  end
end
