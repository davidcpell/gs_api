require 'test_helper'

class API::LevelsControllerTest < ActionDispatch::IntegrationTest
  test "#create should create a new Level" do
    params = {
      level: {name: "Blood Gulch"}
    }

    assert_difference 'Level.count', 1 do 
      post api_levels_path, params: params
    end

    assert_response :success
  end

  test "#create should return the level as json" do
    params = {
      level: {name: "Blood Gulch"}
    }

    post api_levels_path, params: params
    parsed = JSON.parse(response.body)

    assert_equal params[:level][:name], parsed['name']
  end

  test "#create with bad params returns the errors" do
    params = {
      level: {name: nil}
    }

    post api_levels_path, params: params
    parsed = JSON.parse(response.body)

    assert_equal 422, response.status
    assert_includes parsed['errors'], "Name can't be blank"
  end
end
