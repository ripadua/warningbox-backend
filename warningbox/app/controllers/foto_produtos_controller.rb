class FotoProdutosController < ApplicationController
  before_action :set_foto_produto, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /foto_produtos
  # GET /foto_produtos.json
  def index
    @foto_produtos = FotoProduto.all
  end

  # GET /foto_produtos/1
  # GET /foto_produtos/1.json
  def show
  end

  # GET /foto_produtos/new
  def new
    @foto_produto = FotoProduto.new
  end

  # GET /foto_produtos/1/edit
  def edit
  end

  # POST /foto_produtos
  # POST /foto_produtos.json
  def create
    @foto_produto = FotoProduto.new(foto_produto_params)

    respond_to do |format|
      if @foto_produto.save
        format.html { redirect_to @foto_produto, notice: 'Foto produto was successfully created.' }
        format.json { render :show, status: :created, location: @foto_produto }
      else
        format.html { render :new }
        format.json { render json: @foto_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foto_produtos/1
  # PATCH/PUT /foto_produtos/1.json
  def update
    respond_to do |format|
      if @foto_produto.update(foto_produto_params)
        format.html { redirect_to @foto_produto, notice: 'Foto produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @foto_produto }
      else
        format.html { render :edit }
        format.json { render json: @foto_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foto_produtos/1
  # DELETE /foto_produtos/1.json
  def destroy
    @foto_produto.destroy
    respond_to do |format|
      format.html { redirect_to foto_produtos_url, notice: 'Foto produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foto_produto
      @foto_produto = FotoProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foto_produto_params
      params.require(:foto_produto).permit(:imagem, :dataVencimento)
    end
end
