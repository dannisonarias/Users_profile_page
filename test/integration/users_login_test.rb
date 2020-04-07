require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  test "check for repeated flash message" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { session: { username: "asd@aol.com", password: "as" } }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get login_path
    assert flash.empty?
  end
end
