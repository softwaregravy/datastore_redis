require 'test_helper'

module DatastoreRedis
  class RedisStringsControllerTest < ActionController::TestCase
    setup do
      @redis_string = redis_strings(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:redis_strings)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create redis_string" do
      assert_difference('RedisString.count') do
        post :create, redis_string: @redis_string.attributes
      end
  
      assert_redirected_to redis_string_path(assigns(:redis_string))
    end
  
    test "should show redis_string" do
      get :show, id: @redis_string.to_param
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @redis_string.to_param
      assert_response :success
    end
  
    test "should update redis_string" do
      put :update, id: @redis_string.to_param, redis_string: @redis_string.attributes
      assert_redirected_to redis_string_path(assigns(:redis_string))
    end
  
    test "should destroy redis_string" do
      assert_difference('RedisString.count', -1) do
        delete :destroy, id: @redis_string.to_param
      end
  
      assert_redirected_to redis_strings_path
    end
  end
end
