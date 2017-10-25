require 'test_helper'

class KeylogsControllerTest < ActionController::TestCase
  setup do
    @keylog = keylogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:keylogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create keylog" do
    assert_difference('Keylog.count') do
      post :create, keylog: { building: @keylog.building, description: @keylog.description, floor: @keylog.floor, information: @keylog.information, key_holder: @keylog.key_holder, key_number: @keylog.key_number, key_ref: @keylog.key_ref, key_type: @keylog.key_type, key_with: @keylog.key_with, room_number: @keylog.room_number }
    end

    assert_redirected_to keylog_path(assigns(:keylog))
  end

  test "should show keylog" do
    get :show, id: @keylog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @keylog
    assert_response :success
  end

  test "should update keylog" do
    patch :update, id: @keylog, keylog: { building: @keylog.building, description: @keylog.description, floor: @keylog.floor, information: @keylog.information, key_holder: @keylog.key_holder, key_number: @keylog.key_number, key_ref: @keylog.key_ref, key_type: @keylog.key_type, key_with: @keylog.key_with, room_number: @keylog.room_number }
    assert_redirected_to keylog_path(assigns(:keylog))
  end

  test "should destroy keylog" do
    assert_difference('Keylog.count', -1) do
      delete :destroy, id: @keylog
    end

    assert_redirected_to keylogs_path
  end
end
