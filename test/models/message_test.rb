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

require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
