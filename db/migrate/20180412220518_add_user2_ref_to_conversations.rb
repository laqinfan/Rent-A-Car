class AddUser2RefToConversations < ActiveRecord::Migration[5.1]
  def change
    add_reference :conversations, :user2, foreign_key: true
  end
end
