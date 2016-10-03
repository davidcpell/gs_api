require 'test_helper'

class API::PlayedGamesControllerTest < ActionDispatch::IntegrationTest
  test "#create should create a new played_game" do
    game   = games('one')
    user   = users('david')
    level  = levels('hang_em_high')
    params = {
      played_game: {
        score: 100,
        win: true,
        level_id: level.id,
        game_id: game.id
      }
    }

    assert_difference 'PlayedGame.count', 1 do 
      post api_user_played_games_path(user_id: user.id), params: params
    end

    assert_response :success
  end

  test "#index should return a user's played_games" do
    user = users('david')

    get api_user_played_games_path(user_id: user.id)
    res = JSON.parse(response.body)

    assert_equal 1, res.count
    assert_equal 100, res.first['score']
  end
end
