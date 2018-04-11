# == Schema Information
#
# Table name: contracts
#
#  id          :integer          not null, primary key
#  start_date  :string
#  return_date :string
#  price       :float
#  subtotal    :float
#  total       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  status      :string
#  string      :string
#  car_id      :integer
#
# Indexes
#
#  index_contracts_on_car_id  (car_id)
#

require 'date'

class Contract < ApplicationRecord

  belongs_to :paypal , class_name: 'Paypal', foreign_key: 'paypal_id'
  validates :start_date, format: { with: /\d{4}-[0-1]\d-[0-3]\d/, message: "must be of format  YYYY-MM-DD"}, presence: true
  validates :return_date, format: { with: /\d{4}-[0-1]\d-[0-3]\d/, message: "must be of format  YYYY-MM-DD"}, presence: true
  validates :price, numericality: { greater_than_or_equal_to:0.0}, presence: true
  
  before_save :calculate_subtotal

  before_update :check

  private
    def calculate_subtotal 
      startdate = Date.parse(self.start_date)
      enddate = Date.parse(self.return_date)
      begin 
        if (enddate - startdate) >= 0
          self.subtotal = (enddate - startdate).to_i*self.price
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