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

require 'test_helper'

class CommunicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
