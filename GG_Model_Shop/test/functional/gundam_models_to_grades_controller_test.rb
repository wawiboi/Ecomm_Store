require 'test_helper'

class GundamModelsToGradesControllerTest < ActionController::TestCase
  setup do
    @gundam_models_to_grade = gundam_models_to_grades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gundam_models_to_grades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gundam_models_to_grade" do
    assert_difference('GundamModelsToGrade.count') do
      post :create, gundam_models_to_grade: { grade_id: @gundam_models_to_grade.grade_id, gundam_model_id: @gundam_models_to_grade.gundam_model_id, price: @gundam_models_to_grade.price, quantity: @gundam_models_to_grade.quantity }
    end

    assert_redirected_to gundam_models_to_grade_path(assigns(:gundam_models_to_grade))
  end

  test "should show gundam_models_to_grade" do
    get :show, id: @gundam_models_to_grade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gundam_models_to_grade
    assert_response :success
  end

  test "should update gundam_models_to_grade" do
    put :update, id: @gundam_models_to_grade, gundam_models_to_grade: { grade_id: @gundam_models_to_grade.grade_id, gundam_model_id: @gundam_models_to_grade.gundam_model_id, price: @gundam_models_to_grade.price, quantity: @gundam_models_to_grade.quantity }
    assert_redirected_to gundam_models_to_grade_path(assigns(:gundam_models_to_grade))
  end

  test "should destroy gundam_models_to_grade" do
    assert_difference('GundamModelsToGrade.count', -1) do
      delete :destroy, id: @gundam_models_to_grade
    end

    assert_redirected_to gundam_models_to_grades_path
  end
end
