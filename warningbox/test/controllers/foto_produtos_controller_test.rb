require 'test_helper'

class FotoProdutosControllerTest < ActionController::TestCase
  setup do
    @foto_produto = foto_produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foto_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foto_produto" do
    assert_difference('FotoProduto.count') do
      post :create, foto_produto: { dataVencimento: @foto_produto.dataVencimento, imagem: @foto_produto.imagem }
    end

    assert_redirected_to foto_produto_path(assigns(:foto_produto))
  end

  test "should show foto_produto" do
    get :show, id: @foto_produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foto_produto
    assert_response :success
  end

  test "should update foto_produto" do
    patch :update, id: @foto_produto, foto_produto: { dataVencimento: @foto_produto.dataVencimento, imagem: @foto_produto.imagem }
    assert_redirected_to foto_produto_path(assigns(:foto_produto))
  end

  test "should destroy foto_produto" do
    assert_difference('FotoProduto.count', -1) do
      delete :destroy, id: @foto_produto
    end

    assert_redirected_to foto_produtos_path
  end
end
