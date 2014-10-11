require 'test_helper'

class EstudantesControllerTest < ActionController::TestCase
  setup do
    @estudante = estudantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estudantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estudante" do
    assert_difference('Estudante.count') do
      post :create, estudante: { nome: @estudante.nome }
    end

    assert_redirected_to estudante_path(assigns(:estudante))
  end

  test "should show estudante" do
    get :show, id: @estudante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estudante
    assert_response :success
  end

  test "should update estudante" do
    patch :update, id: @estudante, estudante: { nome: @estudante.nome }
    assert_redirected_to estudante_path(assigns(:estudante))
  end

  test "should destroy estudante" do
    assert_difference('Estudante.count', -1) do
      delete :destroy, id: @estudante
    end

    assert_redirected_to estudantes_path
  end
end
