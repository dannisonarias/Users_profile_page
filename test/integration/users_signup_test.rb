require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.new()
  end

  test "invalid signup information" do
    assert_not @user.valid?
  end

  test "error messages not empty" do
    assert_not_nil @user.errors
  end

end
