# == Schema Information
#
# Table name: conversations
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user1_id   :integer
#  user2_id   :integer
#
# Indexes
#
#  index_conversations_on_user1_id  (user1_id)
#  index_conversations_on_user2_id  (user2_id)
#

require 'test_helper'

class ConversationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
