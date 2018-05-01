# == Schema Information
#
# Table name: contracts
#
#  id               :integer          not null, primary key
#  start_date       :string
#  return_date      :string
#  price            :decimal(, )
#  subtotal         :decimal(, )
#  total            :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  status           :string
#  string           :string
#  car_id           :integer
#  owner_paypal_id  :integer
#  renter_paypal_id :integer
#
# Indexes
#
#  index_contracts_on_car_id            (car_id)
#  index_contracts_on_owner_paypal_id   (owner_paypal_id)
#  index_contracts_on_renter_paypal_id  (renter_paypal_id)
#

require 'date'

class Contract < ApplicationRecord

  belongs_to :car
  belongs_to :owner_paypal, class_name: 'Paypal'
  belongs_to :renter_paypal, class_name: 'Paypal'
  
  validates :start_date, presence: true#, format: { with: /\d{4}-[0-1]\d-[0-3]\d/, message: "must be of format  YYYY-MM-DD"}
  validates :return_date, presence: true#, format: { with: /\d{4}-[0-1]\d-[0-3]\d/, message: "must be of format  YYYY-MM-DD"}
  validates :price, numericality: { greater_than_or_equal_to: 0}, presence: true

  validates_each :start_date, :return_date do |record, attr, value|
    begin
      myDate = Date.parse(value)
    rescue ArgumentError
      record.errors.add attr, 'must be of format YYYY-MM-DD'
    end
  end

  scope :by_owner, -> (user) { joins(:owner_paypal).merge(Paypal.by_user(user)) }
  scope :by_renter, -> (user) { joins(:renter_paypal).merge(Paypal.by_user(user)) }


  before_save :calculate_subtotal
  before_update :check

  private
    def calculate_subtotal 
      startdate = Date.parse(self.start_date)
      enddate = Date.parse(self.return_date)
      begin 
        if (enddate - startdate) >= 0
          self.subtotal = ((enddate - startdate).to_i + 1)*self.price
          self.total = self.subtotal*(1.03).round(2)
        else
          raise "Return date should be greater and equal than start date" 
        end
        # self.status = 'Pending'
      end

    end
    def check 
        status = self.status
        if status == 'Executed'
          readonly!
        end
    end

end
