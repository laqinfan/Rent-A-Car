# == Schema Information
#
# Table name: testimonials
#
#  id         :integer          not null, primary key
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  rating     :integer
#  user_id    :integer
#
# Indexes
#
#  index_testimonials_on_user_id  (user_id)
#

require 'test_helper'

class TestimonialTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
