require 'test_helper'

class TripdatesControllerTest < ActionController::TestCase
  setup do
    @tripdate = tripdates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tripdates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tripdate" do
    assert_difference('Tripdate.count') do
      post :create, tripdate: { tdate: @tripdate.tdate }
    end

    assert_redirected_to tripdate_path(assigns(:tripdate))
  end

  test "should show tripdate" do
    get :show, id: @tripdate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tripdate
    assert_response :success
  end

  test "should update tripdate" do
    put :update, id: @tripdate, tripdate: { tdate: @tripdate.tdate }
    assert_redirected_to tripdate_path(assigns(:tripdate))
  end

  test "should destroy tripdate" do
    assert_difference('Tripdate.count', -1) do
      delete :destroy, id: @tripdate
    end

    assert_redirected_to tripdates_path
  end
end
