require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  def setup
    @profile = Profile.create(name: "Ellie Mitchell", email: "email@gmail.com", bio: "test test test test test test test test test test test test test test test test test test test test", interests: "test test test test test test test test test test test test test test test test")
  end
 
  test "profile must be valid" do
    assert @profile.valid?
  end
  
  test "name must be present" do
    @profile.name = ""
    assert_not @profile.valid?
  end
  
  test "name must not be too short" do
    @profile.name = "aa"
    assert_not @profile.valid?
  end
  
  test "name must not be too long" do
    @profile.name = "a" * 101
    assert_not @profile.valid?
  end
  
  test "email must be present" do
    @profile.email = ""
    assert_not @profile.valid?
  end
  
  test "email must not be too long" do
    @profile.email = "a" * 108
    assert_not @profile.valid?
  end
  
  test "bio must be present" do
    @profile.bio = ""
    assert_not @profile.valid?
  end
  
  test "bio must not be too short" do
    @profile.bio = "a" * 28
    assert_not @profile.valid?
  end
    
  test "bio must not be too long" do
    @profile.bio = "a" * 11000
    assert_not @profile.valid?
  end
  
  test "interests must be present" do
    @profile.interests = ""
    assert_not @profile.valid?
  end
  
  test "interests must not be too short" do
    @profile.interests = "a" * 29
    assert_not @profile.valid?
  end
  
  test "interests must not be too long" do
    @profile.interests = "a" * 11000
    assert_not @profile.valid?
  end
end

