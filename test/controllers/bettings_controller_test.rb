require 'test_helper'

class BettingsControllerTest < ActionController::TestCase
  setup do
    @betting = bettings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bettings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create betting" do
    assert_difference('Betting.count') do
      post :create, betting: {  }
    end

    assert_redirected_to betting_path(assigns(:betting))
  end

  test "should show betting" do
    get :show, id: @betting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @betting
    assert_response :success
  end

  test "should update betting" do
    patch :update, id: @betting, betting: {  }
    assert_redirected_to betting_path(assigns(:betting))
  end

  test "should destroy betting" do
    assert_difference('Betting.count', -1) do
      delete :destroy, id: @betting
    end

    assert_redirected_to bettings_path
  end
end
