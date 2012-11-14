require 'test_helper'

class CercsControllerTest < ActionController::TestCase
  setup do
    @cerc = cercs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cercs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cerc" do
    assert_difference('Cerc.count') do
      post :create, cerc: { name: @cerc.name }
    end

    assert_response 201
  end

  test "should show cerc" do
    get :show, id: @cerc
    assert_response :success
  end

  test "should update cerc" do
    put :update, id: @cerc, cerc: { name: @cerc.name }
    assert_response 204
  end

  test "should destroy cerc" do
    assert_difference('Cerc.count', -1) do
      delete :destroy, id: @cerc
    end

    assert_response 204
  end
end
