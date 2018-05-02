# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#




class User < ApplicationRecord
 has_many :communications, class_name: 'Communication', foreign_key: 'sender_id', inverse_of: 'sender'
 has_many :communications, class_name: 'Communication', foreign_key: 'reciever_id', inverse_of: 'reciever'


 has_many :conversations, class_name: 'Conversation', foreign_key: 'user1_id', inverse_of: 'user1'
 has_many :conversations, class_name: 'Conversation', foreign_key: 'user2_id', inverse_of: 'user2'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


    has_one :profile, dependent: :destroy
    has_one :paypal, dependent: :destroy
    has_many :cars
    has_many :owner_ratings
    
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
