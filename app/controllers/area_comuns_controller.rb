class AreaComunsController < ApplicationController
  before_action :set_area_comum, only: [:show, :edit, :update, :destroy]

  # GET /area_comuns
  # GET /area_comuns.json
  def index
    @area_comuns = AreaComum.all
  end

  # GET /area_comuns/1
  # GET /area_comuns/1.json
  def show
  end

  # GET /area_comuns/new
  def new
    @area_comum = AreaComum.new
    @action = { title: "Nova", button: "Salvar"}
    @tipo_area_comuns = TipoAreaComum.all
    @area_comuns = AreaComum.all.paginate(page: params[:page], per_page: 5)
    @proximo_codigo = AreaComum.proximo_codigo
  end

  # GET /area_comuns/1/edit
  def edit
    @proximo_codigo = @area_comum.codigo
    @area_comuns = AreaComum.all.paginate(page: params[:page], per_page: 5)
    @tipo_area_comuns = TipoAreaComum.all
    @action = { title: "Editar", button: "Atualizar"}
  end

  # POST /area_comuns
  # POST /area_comuns.json
  def create
    @area_comum = AreaComum.new(area_comum_params)

    respond_to do |format|
      if @area_comum.save
        format.html { redirect_to action: "new", notice: 'Area Comum criada com sucesso.' }
        format.json { render :show, status: :created, location: @area_comum }
      else
        format.html { render :new }
        format.json { render json: @area_comum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /area_comuns/1
  # PATCH/PUT /area_comuns/1.json
  def update
    respond_to do |format|
      if @area_comum.update(area_comum_params)
        format.html { redirect_to action: "new", notice: 'Area Comum atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @area_comum }
      else
        format.html { render :edit }
        format.json { render json: @area_comum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /area_comuns/1
  # DELETE /area_comuns/1.json
  def destroy
    @area_comum.destroy
    respond_to do |format|
      format.html { redirect_to action: "new", notice: 'Area Comum deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area_comum
      @area_comum = AreaComum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def area_comum_params
      params.require(:area_comum).permit(:codigo, :descricao, :localizacao, :quantidade_reserva, :tipo_area_comum_id)
    end
end
