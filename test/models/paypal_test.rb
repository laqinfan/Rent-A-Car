# == Schema Information
#
# Table name: paypals
#
#  id                            :integer          not null, primary key
#  paypal_id                     :integer
#  paypal_username               :string
#  paypal_account_routing_number :integer
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#

require 'test_helper'

class PaypalTest < ActiveSupport::TestCase

  test "Paypal id is logical " do
    one = paypals(:one)
    one.paypal_id = 98982
    assert one.save!
   end
  
   test "Paypal id is not reasonable" do
    one = paypals(:one)
    one.paypal_id = 125255555555555555555555555555555555555555555555555555555555557777777777777777777999999999999999999999999999999999999999999999999999999999999
   assert_not one.valid?
   end

   
   test "Paypal id should not be duplicate" do
    one = paypals(:one)
    two = paypals(:two)
    two.paypal_id = one.paypal_id
    assert_not two.valid?
   end
  
   test "Paypal id is not justifiable" do
    one = paypals(:one)
    one.paypal_id = nil
    assert_not one.valid?
   end
  
   test "Paypal username is correct " do
    one = paypals(:one)
    one.paypal_username = 'Sdutta5'
    assert one.valid?
   end
  
   test "Paypal username is not right" do
    one = profiles(:one)
    one.drivers_license = 'Sdutta5@72'
    assert_not one.valid?
   end
  
   test "Paypal username can not be exactly same" do
    one = paypals(:one)
    two = paypals(:two)
    two.paypal_username = one.paypal_username
    assert_not two.valid?
   end
  
   test "Paypal username cannot be empty" do
    one = paypals(:one)
    one.paypal_username = nil
    assert_not one.valid?
   end
  
   test "Paypal username cannot be blank" do
    one = paypals(:one)
    one.paypal_username = ''
    assert_not one.valid?
  end

  test "Paypal account routing number makes sense " do
    one = paypals(:one)
    one.paypal_account_routing_number = 98982222
    assert one.valid?
   end

   
   test "Paypal account routing number is not in format" do
    one = paypals(:one)
    one.paypal_account_routing_number = 125255555555555555555555555555555555555555555555555555555555557777777777777777777999999999999999999999999999999999999999999999999999999999999
   assert_not one.valid?
   end
  
   test "Paypal account routing number is bad" do
    one = paypals(:one)
    one.paypal_account_routing_number = nil
    assert_not one.valid?
   end
  
  

   
end
