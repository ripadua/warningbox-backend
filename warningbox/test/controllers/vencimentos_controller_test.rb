require 'test_helper'

class VencimentosControllerTest < ActionController::TestCase
  setup do
    @vencimento = vencimentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vencimentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vencimento" do
    assert_difference('Vencimento.count') do
      post :create, vencimento: { dataVencimento: @vencimento.dataVencimento, estabelecimento_id: @vencimento.estabelecimento_id, imagem: @vencimento.imagem }
    end

    assert_redirected_to vencimento_path(assigns(:vencimento))
  end

  test "should show vencimento" do
    get :show, id: @vencimento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vencimento
    assert_response :success
  end

  test "should update vencimento" do
    patch :update, id: @vencimento, vencimento: { dataVencimento: @vencimento.dataVencimento, estabelecimento_id: @vencimento.estabelecimento_id, imagem: @vencimento.imagem }
    assert_redirected_to vencimento_path(assigns(:vencimento))
  end

  test "should destroy vencimento" do
    assert_difference('Vencimento.count', -1) do
      delete :destroy, id: @vencimento
    end

    assert_redirected_to vencimentos_path
  end
end
