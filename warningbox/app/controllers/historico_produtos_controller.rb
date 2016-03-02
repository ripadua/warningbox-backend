class HistoricoProdutosController < ApplicationController
  before_action :set_historico_produto, only: [:show, :edit, :update, :destroy]

  # GET /historico_produtos
  # GET /historico_produtos.json
  def index
    @historico_produtos = HistoricoProduto.all
  end

  # GET /historico_produtos/1
  # GET /historico_produtos/1.json
  def show
  end

  # GET /historico_produtos/new
  def new
    @historico_produto = HistoricoProduto.new
  end

  # GET /historico_produtos/1/edit
  def edit
  end

  # POST /historico_produtos
  # POST /historico_produtos.json
  def create
    @historico_produto = HistoricoProduto.new(historico_produto_params)

    respond_to do |format|
      if @historico_produto.save
        format.html { redirect_to @historico_produto, notice: 'Historico produto was successfully created.' }
        format.json { render :show, status: :created, location: @historico_produto }
      else
        format.html { render :new }
        format.json { render json: @historico_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historico_produtos/1
  # PATCH/PUT /historico_produtos/1.json
  def update
    respond_to do |format|
      if @historico_produto.update(historico_produto_params)
        format.html { redirect_to @historico_produto, notice: 'Historico produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @historico_produto }
      else
        format.html { render :edit }
        format.json { render json: @historico_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historico_produtos/1
  # DELETE /historico_produtos/1.json
  def destroy
    @historico_produto.destroy
    respond_to do |format|
      format.html { redirect_to historico_produtos_url, notice: 'Historico produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historico_produto
      @historico_produto = HistoricoProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def historico_produto_params
      params.require(:historico_produto).permit(:produto_id, :dataVencimento)
    end
end
