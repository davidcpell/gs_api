require 'test_helper'

class LevelTest < ActiveSupport::TestCase
  test "is invalid without a name" do 
    level = Level.new(name: nil)

    refute level.valid?
    assert_includes level.errors.full_messages, "Name can't be blank"
  end
end
