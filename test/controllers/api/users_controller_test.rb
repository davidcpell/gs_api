require 'test_helper'

class API::UsersControllerTest < ActionDispatch::IntegrationTest
  test '#create action generates a new user' do 
    params = {
      user: {username: 'emily', email: 'emily@example.com'}
    }

    assert_difference 'User.count', 1 do 
      post api_users_path, params: params
    end

    assert_equal params[:user][:username], User.last.username
    assert_equal params[:user][:email], User.last.email
  end

  test '#create returns the proper response' do 
    params = {
      user: {username: 'emily', email: 'emily@example.com'}
    }

    post api_users_path, params: params
    body = JSON.parse(response.body)

    assert_equal 200, response.status
    assert_equal params[:user][:username], body['username']
    assert_equal params[:user][:email], body['email']
  end
end
