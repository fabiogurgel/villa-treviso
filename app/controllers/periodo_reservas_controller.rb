class PeriodoReservasController < ApplicationController
  before_action :set_periodo_reserva, only: [:show, :edit, :update, :destroy]

  # GET /periodo_reservas
  # GET /periodo_reservas.json
  def index
    @periodo_reservas = PeriodoReserva.all
  end

  # GET /periodo_reservas/1
  # GET /periodo_reservas/1.json
  def show
  end

  # GET /periodo_reservas/new
  def new
    @periodo_reserva = PeriodoReserva.new
    @periodo_reservas = PeriodoReserva.all.paginate(page: params[:page], per_page: 5)
    @action = { title: "Novo", button: "Salvar"}
    @proximo_codigo = PeriodoReserva.proximo_codigo
  end

  # GET /periodo_reservas/1/edit
  def edit
    @proximo_codigo = @periodo_reserva.codigo
    @periodo_reservas = PeriodoReserva.all.paginate(page: params[:page], per_page: 5)
    @action = { title: "Editar", button: "Atualizar"}
  end

  # POST /periodo_reservas
  # POST /periodo_reservas.json
  def create
    @periodo_reserva = PeriodoReserva.new(periodo_reserva_params)
    @periodo_reservas = PeriodoReserva.all.paginate(page: params[:page], per_page: 5)
    @action = { title: "Novo", button: "Salvar"}

    respond_to do |format|
      if @periodo_reserva.save
        format.html { redirect_to action: "new", notice: 'Periodo reserva criada com sucesso..' }
        format.json { render :show, status: :created, location: @periodo_reserva }
      else
        format.html { render :new }
        format.json { render json: @periodo_reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /periodo_reservas/1
  # PATCH/PUT /periodo_reservas/1.json
  def update
    respond_to do |format|
      if @periodo_reserva.update(periodo_reserva_params)
        format.html { redirect_to action: "new", notice: 'Periodo reserva atualizado com sucesso..' }
        format.json { render :show, status: :ok, location: @periodo_reserva }
      else
        format.html { render :edit }
        format.json { render json: @periodo_reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /periodo_reservas/1
  # DELETE /periodo_reservas/1.json
  def destroy
    @periodo_reserva.destroy
    respond_to do |format|
      format.html { redirect_to action: "new", notice: 'Periodo reserva deletado com sucesso..' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_periodo_reserva
      @periodo_reserva = PeriodoReserva.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def periodo_reserva_params
      params.require(:periodo_reserva).permit(:codigo, :descricao)
    end
end
