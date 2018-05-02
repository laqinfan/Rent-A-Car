# == Schema Information
#
# Table name: owner_ratings
#
#  id          :integer          not null, primary key
#  rating      :integer
#  comment     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  owner_id    :integer
#  contract_id :integer
#
# Indexes
#
#  index_owner_ratings_on_contract_id  (contract_id)
#  index_owner_ratings_on_owner_id     (owner_id)
#  index_owner_ratings_on_user_id      (user_id)
#

class OwnerRating < ApplicationRecord
    belongs_to :owner, class_name: 'User',foreign_key: 'owner_id'
    belongs_to :user, class_name: 'User',foreign_key: 'user_id'
    belongs_to :contract

   scope :by_owner, -> (owner) {where(owner: owner)}
   scope :by_user, -> (user) {where(user: user)}

end
