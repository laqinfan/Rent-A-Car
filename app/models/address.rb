#kbridson
class Address < ApplicationRecord
    validates :street1, length: { maximum: 30 }, uniqueness: true, presence: true
    validates :street2, length: { maximum: 30 }, allow_blank: true
    validates :city, presence: true
    validates :state, length: { is: 2 }, presence: true
    validates :zipcode, length: { is: 5 }, presence: true

    def state=(val)
        write_attribute :state, val.upcase
    end
end
