# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  street1    :string
#  street2    :string
#  city       :string
#  state      :string
#  zipcode    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

#kbridson
class Address < ApplicationRecord
    has_many :locations
    has_many :cars, through: :locations, source: :addressable, source_type: 'Car'

    validates :street1, length: { maximum: 30 }, uniqueness: true, presence: true
    validates :street2, length: { maximum: 30 }, allow_blank: true
    validates :city, presence: true
    validates :state, length: { is: 2 }, presence: true
    validates :zipcode, length: { is: 5 }, presence: true

    def state=(val)
        write_attribute :state, val.upcase
    end
end
