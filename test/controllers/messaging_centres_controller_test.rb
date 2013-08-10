require 'test_helper'

class MessagingCentresControllerTest < ActionController::TestCase
  setup do
    @messaging_centre = messaging_centres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messaging_centres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create messaging_centre" do
    assert_difference('MessagingCentre.count') do
      post :create, messaging_centre: {  }
    end

    assert_redirected_to messaging_centre_path(assigns(:messaging_centre))
  end

  test "should show messaging_centre" do
    get :show, id: @messaging_centre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @messaging_centre
    assert_response :success
  end

  test "should update messaging_centre" do
    patch :update, id: @messaging_centre, messaging_centre: {  }
    assert_redirected_to messaging_centre_path(assigns(:messaging_centre))
  end

  test "should destroy messaging_centre" do
    assert_difference('MessagingCentre.count', -1) do
      delete :destroy, id: @messaging_centre
    end

    assert_redirected_to messaging_centres_path
  end
end
