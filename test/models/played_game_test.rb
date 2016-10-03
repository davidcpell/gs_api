require 'test_helper'

class PlayedGameTest < ActiveSupport::TestCase
  test "is invalid without associations" do
    # all attributes nil
    pg = PlayedGame.new

    refute pg.valid?
    assert_includes pg.errors.full_messages, "Game must exist"
    assert_includes pg.errors.full_messages, "User must exist"
    assert_includes pg.errors.full_messages, "Level must exist"
  end
end
