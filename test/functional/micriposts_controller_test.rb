require 'test_helper'

class MicripostsControllerTest < ActionController::TestCase
  setup do
    @micripost = micriposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micriposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micripost" do
    assert_difference('Micripost.count') do
      post :create, micripost: @micripost.attributes
    end

    assert_redirected_to micripost_path(assigns(:micripost))
  end

  test "should show micripost" do
    get :show, id: @micripost.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micripost.to_param
    assert_response :success
  end

  test "should update micripost" do
    put :update, id: @micripost.to_param, micripost: @micripost.attributes
    assert_redirected_to micripost_path(assigns(:micripost))
  end

  test "should destroy micripost" do
    assert_difference('Micripost.count', -1) do
      delete :destroy, id: @micripost.to_param
    end

    assert_redirected_to micriposts_path
  end
end
