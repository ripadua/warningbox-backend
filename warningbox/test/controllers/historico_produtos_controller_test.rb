require 'test_helper'

class HistoricoProdutosControllerTest < ActionController::TestCase
  setup do
    @historico_produto = historico_produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:historico_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create historico_produto" do
    assert_difference('HistoricoProduto.count') do
      post :create, historico_produto: { dataVencimento: @historico_produto.dataVencimento, produto_id: @historico_produto.produto_id }
    end

    assert_redirected_to historico_produto_path(assigns(:historico_produto))
  end

  test "should show historico_produto" do
    get :show, id: @historico_produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @historico_produto
    assert_response :success
  end

  test "should update historico_produto" do
    patch :update, id: @historico_produto, historico_produto: { dataVencimento: @historico_produto.dataVencimento, produto_id: @historico_produto.produto_id }
    assert_redirected_to historico_produto_path(assigns(:historico_produto))
  end

  test "should destroy historico_produto" do
    assert_difference('HistoricoProduto.count', -1) do
      delete :destroy, id: @historico_produto
    end

    assert_redirected_to historico_produtos_path
  end
end
