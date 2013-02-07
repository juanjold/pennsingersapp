require 'test_helper'

class TechiesControllerTest < ActionController::TestCase
  setup do
    @techy = techies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:techies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create techy" do
    assert_difference('Techie.count') do
      post :create, techy: { bio: @techy.bio, lastname: @techy.lastname, name: @techy.name, position: @techy.position, skill: @techy.skill }
    end

    assert_redirected_to techy_path(assigns(:techy))
  end

  test "should show techy" do
    get :show, id: @techy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @techy
    assert_response :success
  end

  test "should update techy" do
    put :update, id: @techy, techy: { bio: @techy.bio, lastname: @techy.lastname, name: @techy.name, position: @techy.position, skill: @techy.skill }
    assert_redirected_to techy_path(assigns(:techy))
  end

  test "should destroy techy" do
    assert_difference('Techie.count', -1) do
      delete :destroy, id: @techy
    end

    assert_redirected_to techies_path
  end
end
