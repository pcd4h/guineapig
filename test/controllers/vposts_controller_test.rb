require 'test_helper'

class VpostsControllerTest < ActionController::TestCase
  setup do
    @vpost = vposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vpost" do
    assert_difference('Vpost.count') do
      post :create, vpost: { identifier: @vpost.identifier, payload: @vpost.payload }
    end

    assert_redirected_to vpost_path(assigns(:vpost))
  end

  test "should show vpost" do
    get :show, id: @vpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vpost
    assert_response :success
  end

  test "should update vpost" do
    patch :update, id: @vpost, vpost: { identifier: @vpost.identifier, payload: @vpost.payload }
    assert_redirected_to vpost_path(assigns(:vpost))
  end

  test "should destroy vpost" do
    assert_difference('Vpost.count', -1) do
      delete :destroy, id: @vpost
    end

    assert_redirected_to vposts_path
  end
end
