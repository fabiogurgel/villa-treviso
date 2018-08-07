class ReservasController < ApplicationController
  before_action :set_reserva, only: [:show, :edit, :update, :destroy]

  # GET /reservas
  # GET /reservas.json
  def index
    @reservas = Reserva.all
  end

  # GET /reservas/1
  # GET /reservas/1.json
  def show
  end

  # GET /reservas/new
  def new
    @reserva = Reserva.new
    @area_comuns = AreaComum.all
    @situacao_reserva = SituacaoReserva.aguardando_liberacao
    @periodo_reserva = PeriodoReserva.all
    @usuario_signed_in =  current_usuario.nome
    @proximo_codigo = Reserva.proximo_codigo
  end

  # GET /reservas/1/edit
  def edit
  end

  # POST /reservas
  # POST /reservas.json
  def create
    raise reserva_params.inspect
    @reserva = Reserva.new(reserva_params)
    @area_comuns = AreaComum.all
    @situacao_reserva = SituacaoReserva.aguardando_liberacao
    @periodo_reserva = PeriodoReserva.all
    @usuario_signed_in =  current_usuario.nome
    @proximo_codigo = Reserva.proximo_codigo

    respond_to do |format|
      if @reserva.save
        format.html { redirect_to @reserva, notice: 'Reserva was successfully created.' }
        format.json { render :show, status: :created, location: @reserva }
      else
        format.html { render :new }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservas/1
  # PATCH/PUT /reservas/1.json
  def update
    respond_to do |format|
      if @reserva.update(reserva_params)
        format.html { redirect_to @reserva, notice: 'Reserva was successfully updated.' }
        format.json { render :show, status: :ok, location: @reserva }
      else
        format.html { render :edit }
        format.json { render json: @reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservas/1
  # DELETE /reservas/1.json
  def destroy
    @reserva.destroy
    respond_to do |format|
      format.html { redirect_to reservas_url, notice: 'Reserva was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserva
      @reserva = Reserva.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserva_params
      params.require(:reserva).permit(:codigo, :data_reserva, :data_solicitacao, :area_comum_id, :usuario_reserva_id, :usuario_liberador_id, :situacao_reserva_id, :observacao, :periodo_reserva_id, :obervacao_liberador)
    end
end
