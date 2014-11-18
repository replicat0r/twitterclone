require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")	
	end

	test "should be valid" do
		assert @user.valid?
	end

	test "name should be present" do
		@user.name = "      "
		assert_not @user.valid?
	end

	test "email should be present" do
		@user.email = "  "
		assert_not @user.valid?
	end
	

	test "name shouldnt be too long" do
		@user.name = "a" *100
		assert_not @user.valid?
	end
  # test "the truth" do
  #   assert true
  # end
end
