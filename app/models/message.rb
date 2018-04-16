# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  user_name  :string
#  message    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Message < ApplicationRecord
has_many :communications
# belongs_to :communication
# belongs_to :user2, class_name: 'Communication', foreign_key: 'user1_id', optional: true
end
