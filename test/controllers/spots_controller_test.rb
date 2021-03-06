require 'test_helper'

class SpotsControllerTest < ActionController::TestCase
  setup do
    @spot = spots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spot" do
    assert_difference('Spot.count') do
      post :create, spot: { add1: @spot.add1, add2: @spot.add2, city: @spot.city, maintainer: @spot.maintainer, name: @spot.name, state: @spot.state, status: @spot.status, zipcode: @spot.zipcode }
    end

    assert_redirected_to spot_path(assigns(:spot))
  end

  test "should show spot" do
    get :show, id: @spot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spot
    assert_response :success
  end

  test "should update spot" do
    patch :update, id: @spot, spot: { add1: @spot.add1, add2: @spot.add2, city: @spot.city, maintainer: @spot.maintainer, name: @spot.name, state: @spot.state, status: @spot.status, zipcode: @spot.zipcode }
    assert_redirected_to spot_path(assigns(:spot))
  end

  test "should destroy spot" do
    assert_difference('Spot.count', -1) do
      delete :destroy, id: @spot
    end

    assert_redirected_to spots_path
  end
end
