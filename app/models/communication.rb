# == Schema Information
#
# Table name: communications
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  message_id      :integer
#  sender_id       :integer
#  reciever_id     :integer
#  conversation_id :integer
#
# Indexes
#
#  index_communications_on_conversation_id  (conversation_id)
#  index_communications_on_message_id       (message_id)
#  index_communications_on_reciever_id      (reciever_id)
#  index_communications_on_sender_id        (sender_id)
#

class Communication < ApplicationRecord
      belongs_to :sender, class_name: 'User', foreign_key: 'sender_id', optional: true
      belongs_to :reciever, class_name: 'User', foreign_key: 'reciever_id', optional: true
      belongs_to :message
      belongs_to :conversation


end
