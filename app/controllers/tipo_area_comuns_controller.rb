class TipoAreaComunsController < ApplicationController
  before_action :set_tipo_area_comum, only: [:show, :edit, :update, :destroy]

  # GET /tipo_area_comuns
  # GET /tipo_area_comuns.json
  def index
    @tipo_area_comuns = TipoAreaComum.all
  end

  # GET /tipo_area_comuns/1
  # GET /tipo_area_comuns/1.json
  def show
  end

  # GET /tipo_area_comuns/new
  def new
    @tipo_area_comum = TipoAreaComum.new
    @tipo_area_comuns = TipoAreaComum.all.paginate(page: params[:page], per_page: 5)
    @action = { title: "Novo", button: "Salvar"}
    @proximo_codigo = TipoAreaComum.proximo_codigo
  end

  # GET /tipo_area_comuns/1/edit
  def edit
    @proximo_codigo = @tipo_area_comum.codigo
    @tipo_area_comuns = TipoAreaComum.all.paginate(page: params[:page], per_page: 5)
    @action = { title: "Editar", button: "Atualizar"}
  end

  # POST /tipo_area_comuns
  # POST /tipo_area_comuns.json
  def create
    @action = { title: "Nova", button: "Salvar"}
    @tipo_area_comuns = TipoAreaComum.all.paginate(page: params[:page], per_page: 5)
    @tipo_area_comum = TipoAreaComum.new(tipo_area_comum_params)

    respond_to do |format|
      if @tipo_area_comum.save
        format.html { redirect_to action: "new", notice: 'Tipo Area Comum criada com sucesso.' }
        format.json { render :show, status: :created, location: @tipo_area_comum }
      else
        format.html { render :new }
        format.json { render json: @tipo_area_comum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_area_comuns/1
  # PATCH/PUT /tipo_area_comuns/1.json
  def update
    respond_to do |format|
      if @tipo_area_comum.update(tipo_area_comum_params)
        format.html { redirect_to action: "new", notice: 'Tipo Area Comum atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @tipo_area_comum }
      else
        format.html { render :edit }
        format.json { render json: @tipo_area_comum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_area_comuns/1
  # DELETE /tipo_area_comuns/1.json
  def destroy
    @tipo_area_comum.destroy
    respond_to do |format|
      format.html { redirect_to action: "new", notice: 'Tipo Area Comum deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_area_comum
      @tipo_area_comum = TipoAreaComum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_area_comum_params
      params.require(:tipo_area_comum).permit(:codigo, :descricao)
    end
end
