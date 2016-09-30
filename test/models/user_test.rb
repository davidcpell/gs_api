require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "must have a username" do 
    user = users(:david)
    user.username = nil

    refute user.valid?
    assert_includes user.errors.full_messages, "Username can't be blank"
  end

  test "must have an email" do 
    user = users(:david)
    user.email = nil

    refute user.valid?
    assert_includes user.errors.full_messages, "Email can't be blank"
  end
end
