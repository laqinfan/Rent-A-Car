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

class Conversation < ApplicationRecord

     belongs_to :user1, class_name: 'User', foreign_key: 'user1_id', optional: true
     belongs_to :user2, class_name: 'User', foreign_key: 'user2_id', optional: true
     has_many :communications

end
