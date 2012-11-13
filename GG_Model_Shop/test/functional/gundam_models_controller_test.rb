require 'test_helper'

class GundamModelsControllerTest < ActionController::TestCase
  setup do
    @gundam_model = gundam_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gundam_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gundam_model" do
    assert_difference('GundamModel.count') do
      post :create, gundam_model: { description: @gundam_model.description, grade_id: @gundam_model.grade_id, id: @gundam_model.id, name: @gundam_model.name }
    end

    assert_redirected_to gundam_model_path(assigns(:gundam_model))
  end

  test "should show gundam_model" do
    get :show, id: @gundam_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gundam_model
    assert_response :success
  end

  test "should update gundam_model" do
    put :update, id: @gundam_model, gundam_model: { description: @gundam_model.description, grade_id: @gundam_model.grade_id, id: @gundam_model.id, name: @gundam_model.name }
    assert_redirected_to gundam_model_path(assigns(:gundam_model))
  end

  test "should destroy gundam_model" do
    assert_difference('GundamModel.count', -1) do
      delete :destroy, id: @gundam_model
    end

    assert_redirected_to gundam_models_path
  end
end
