require 'test_helper'

class API::GamesControllerTest < ActionDispatch::IntegrationTest
  test '#create generates a new game' do 
    assert_difference 'Game.count', 1 do 
      post api_games_path, params: {}
    end
  end
end
