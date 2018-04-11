# == Schema Information
#
# Table name: profiles
#
#  id                     :integer          not null, primary key
#  drivers_license        :string
#  first_name             :string
#  last_name              :string
#  middle_name            :string
#  backgroundcheck_status :string
#  phone                  :string
#  social_security        :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  user_id                :integer
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase

  test "Drivers license is logical " do
    one = profiles(:one)
    one.drivers_license = '125678987'
    assert one.valid?
   end
  
   test "Drivers license is not reasonable" do
    one = profiles(:one)
    one.drivers_license = '125255555555555555555555555555555555555555555555555555555555557777777777777777777999999999999999999999999999999999999999999999999999999999999'
   assert_not one.valid?
   end
  
   test "Drivers license should not be duplicate" do
    one = profiles(:one)
    two = profiles(:two)
    two.drivers_license = one.drivers_license
    assert_not two.valid?
   end
  
   test "Drivers license is not justifiable" do
    one = profiles(:one)
    one.drivers_license = nil
    assert_not one.valid?
   end
  
   test "Drivers license cannot be empty" do
    one = profiles(:one)
    one.drivers_license = ''
    assert_not one.valid?
   end
  
  test " First Name must be valid " do
   one = profiles(:one)
   one.first_name = 'Sanina'
   assert one.valid?
  end

  test "First name is very lengthy" do
   one = profiles(:one)
   one.first_name = 'yutttttttttttytrtuiuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiipppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp'
   assert_not one.valid?
  end


  test "First name should not be valid" do
   one = profiles(:one)
   one.first_name = nil
   assert_not one.valid?
  end

  test "First name should not be blank and must have values" do
    one = profiles(:one)
    one.first_name = ''
    assert_not one.valid?
  end

  test " Last Name is meaningful " do
   one = profiles(:one)
   one.last_name = 'Dutta'
   assert one.valid?
  end

  test "Last Name is so long" do
   one = profiles(:one)
   one.last_name = 'Adfgjhkkkkkkkkkkkkkkkkkkkkkkkkkiiiiiiiiiiiiiippppppppppppppppppppppppppppppppppppiiiiiiiiiiiiilllllllllllllllllllllllllllllllllyyyyyyyyyyyyyyyyyyyyyaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
   assert_not one.valid?
  end


 test "Last name should not be like this" do
  one = profiles(:one)
  one.last_name = nil
  assert_not one.valid?
 end

 test "Last name should make sense" do
  one = profiles(:one)
  one.last_name = ''
  assert_not one.valid?
 end

 test " Middle name makes sense " do
  one = profiles(:one)
  one.middle_name = 'Kumari'
  assert one.valid?
 end

test "Middle Name is not right" do
 one = profiles(:one)
 one.middle_name = 'Iuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuutyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrriiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiidddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'
 assert_not one.valid?
end

test "Middle name is optional" do
  one = profiles(:one)
  one.middle_name = ''
  assert one.valid?
end

test "Background check status is meaningful " do
  one = profiles(:one)
  one.backgroundcheck_status = 'checked'
  assert one.valid?
end

test "Background check status is good" do
  one = profiles(:one)
  one.backgroundcheck_status = 'processing'
  assert one.valid?
 end

test "Background check status is correct " do
  one = profiles(:one)
  one.backgroundcheck_status = 'unchecked'
  assert one.valid?
end

test "Background check status doe not obey validation" do
  one = profiles(:one)
  one.backgroundcheck_status = 'Notdone'
  assert_not one.valid?
end

test "Background check status cannot be like this" do
  one = profiles(:one)
  one.backgroundcheck_status = nil
  assert_not one.valid?
end

test "Background check status can not be blank" do
  one = profiles(:one)
  one.backgroundcheck_status = ''
  assert_not one.valid?
end

test "Phone should be valid" do
  one = profiles(:one)
  one.phone = '123-456-7890'
  assert one.valid?
end

test "Phone is not be valid" do
  one = profiles(:one)
  one.phone = '901ytrttyr'
  assert_not one.valid?
end

test "Phone is too lengthy" do
  one = profiles(:one)
  one.phone = '9016785642672562229872222' 
  assert_not one.valid?
end

test "Phone can not be nil" do
  one = profiles(:one)
  one.phone = nil
  assert_not one.valid?
 end

 test "Phone should  have some values" do
   one = profiles(:one)
   one.phone = ''
   assert_not one.valid?
 end

 test "Social security should be valid" do
  one = profiles(:one)
  one.social_security = 908676228
  assert one.valid?
 end

 test "Social security is very big " do
  one = profiles(:one)
  one.social_security = 908999999999999999999999999999999999997799000000000
  assert_not one.valid?
 end

 test "Social security is not valid " do
  one = profiles(:one)
  one.social_security = nil
  assert_not one.valid?
 end


end


