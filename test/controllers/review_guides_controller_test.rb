require 'test_helper'

class ReviewGuidesControllerTest < ActionController::TestCase
  setup do
    @review_guide = review_guides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:review_guides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create review_guide" do
    assert_difference('ReviewGuide.count') do
      post :create, review_guide: {  }
    end

    assert_redirected_to review_guide_path(assigns(:review_guide))
  end

  test "should show review_guide" do
    get :show, id: @review_guide
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @review_guide
    assert_response :success
  end

  test "should update review_guide" do
    patch :update, id: @review_guide, review_guide: {  }
    assert_redirected_to review_guide_path(assigns(:review_guide))
  end

  test "should destroy review_guide" do
    assert_difference('ReviewGuide.count', -1) do
      delete :destroy, id: @review_guide
    end

    assert_redirected_to review_guides_path
  end
end
