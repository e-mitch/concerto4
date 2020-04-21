require 'test_helper'

class UserTest < ActiveSupport::TestCase
    def setup
    @user = User.create(username: "usernametest", password: "passwordtest")
  end
 
  test "user must be valid" do
    assert @user.valid?
  end
  
  test "username must be present" do
    @user.username = ""
    assert_not @user.valid?
  end
  
  test "username must not be too short" do
    @user.username = "aa"
    assert_not @user.valid?
  end
  
  test "username must not be too long" do
    @user.username = "A" * 26
    assert_not @user.valid?
  end
end
