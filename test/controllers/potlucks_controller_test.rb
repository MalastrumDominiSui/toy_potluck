require 'test_helper'

class PotlucksControllerTest < ActionController::TestCase
  setup do
    @potluck = potlucks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:potlucks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create potluck" do
    assert_difference('Potluck.count') do
      post :create, potluck: { date: @potluck.date, description: @potluck.description, location: @potluck.location, name: @potluck.name, party_size: @potluck.party_size, time: @potluck.time, user_id: @potluck.user_id }
    end

    assert_redirected_to potluck_path(assigns(:potluck))
  end

  test "should show potluck" do
    get :show, id: @potluck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @potluck
    assert_response :success
  end

  test "should update potluck" do
    patch :update, id: @potluck, potluck: { date: @potluck.date, description: @potluck.description, location: @potluck.location, name: @potluck.name, party_size: @potluck.party_size, time: @potluck.time, user_id: @potluck.user_id }
    assert_redirected_to potluck_path(assigns(:potluck))
  end

  test "should destroy potluck" do
    assert_difference('Potluck.count', -1) do
      delete :destroy, id: @potluck
    end

    assert_redirected_to potlucks_path
  end
end
