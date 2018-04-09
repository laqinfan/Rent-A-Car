ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  include Devise::Test::IntegrationHelpers
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def sign_in_as(user)
    #post user_session_url, params: { sig: user.perishable_signature }
    post user_session_url, params: { session: { email: user.email, password: user.password } }
  end

  def sign_in_for(subject)
    @user = User.create(email: "#{rand(50000)}@example.com", password: 'password')
    sign_in_as @user
    subject.update_attribute(:user_id, @user.id)
  end
end
