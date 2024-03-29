require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  setup do
    @message = messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create message" do
    assert_difference('Message.count') do
      post :create, message: { call_taker: @message.call_taker, caller_name: @message.caller_name, caller_of: @message.caller_of, date: @message.date, for: @message.for, phone_message: @message.phone_message, phone_number: @message.phone_number, time: @message.time }
    end

    assert_redirected_to message_path(assigns(:message))
  end

  test "should show message" do
    get :show, id: @message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @message
    assert_response :success
  end

  test "should update message" do
    patch :update, id: @message, message: { call_taker: @message.call_taker, caller_name: @message.caller_name, caller_of: @message.caller_of, date: @message.date, for: @message.for, phone_message: @message.phone_message, phone_number: @message.phone_number, time: @message.time }
    assert_redirected_to message_path(assigns(:message))
  end

  test "should destroy message" do
    assert_difference('Message.count', -1) do
      delete :destroy, id: @message
    end

    assert_redirected_to messages_path
  end
end
