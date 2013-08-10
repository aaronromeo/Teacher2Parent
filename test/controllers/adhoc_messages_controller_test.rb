require 'test_helper'

class AdhocMessagesControllerTest < ActionController::TestCase
  setup do
    @adhoc_message = adhoc_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adhoc_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adhoc_message" do
    assert_difference('AdhocMessage.count') do
      post :create, adhoc_message: { isNew: @adhoc_message.isNew, student_id: @adhoc_message.student_id, user_id: @adhoc_message.user_id }
    end

    assert_redirected_to adhoc_message_path(assigns(:adhoc_message))
  end

  test "should show adhoc_message" do
    get :show, id: @adhoc_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adhoc_message
    assert_response :success
  end

  test "should update adhoc_message" do
    patch :update, id: @adhoc_message, adhoc_message: { isNew: @adhoc_message.isNew, student_id: @adhoc_message.student_id, user_id: @adhoc_message.user_id }
    assert_redirected_to adhoc_message_path(assigns(:adhoc_message))
  end

  test "should destroy adhoc_message" do
    assert_difference('AdhocMessage.count', -1) do
      delete :destroy, id: @adhoc_message
    end

    assert_redirected_to adhoc_messages_path
  end
end
