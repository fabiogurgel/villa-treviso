class SituacaoReservasController < ApplicationController
  before_action :set_situacao_reserva, only: [:edit, :update, :destroy]
  before_action :authenticate_usuario!

  # GET /situacao_reservas/new
  def new
    @situacao_reserva = SituacaoReserva.new
    @situacao_reservas = SituacaoReserva.all.paginate(page: params[:page], per_page: 5)
    @action = { title: "Nova", button: "Salvar"}
    @proximo_codigo = SituacaoReserva.proximo_codigo
  end

  # GET /situacao_reservas/1/edit
  def edit
    @proximo_codigo = @situacao_reserva.codigo
    @situacao_reservas = SituacaoReserva.all.paginate(page: params[:page], per_page: 5)
    @action = { title: "Editar", button: "Atualizar"}
  end

  # POST /situacao_reservas
  # POST /situacao_reservas.json
  def create
    @situacao_reserva = SituacaoReserva.new(situacao_reserva_params)
    @situacao_reservas = SituacaoReserva.all.paginate(page: params[:page], per_page: 5)
    @action = { title: "Nova", button: "Salvar"}

    respond_to do |format|
      if @situacao_reserva.save
        format.html { redirect_to action: "new", notice: 'Situação reserva criada com sucesso..' }
        format.json { render :show, status: :created, location: @situacao_reserva }
      else
        format.html { render :new }
        format.json { render json: @situacao_reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /situacao_reservas/1
  # PATCH/PUT /situacao_reservas/1.json
  def update
    respond_to do |format|
      if @situacao_reserva.update(situacao_reserva_params)
        format.html { redirect_to action: "new", notice: 'Situação reserva atualizado com sucesso..' }
        format.json { render :show, status: :ok, location: @situacao_reserva }
      else
        format.html { render :edit }
        format.json { render json: @situacao_reserva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /situacao_reservas/1
  # DELETE /situacao_reservas/1.json
  def destroy
    @situacao_reserva.destroy
    respond_to do |format|
      format.html { redirect_to action: "new", notice: 'Situação reserva deletado com sucesso..' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_situacao_reserva
      @situacao_reserva = SituacaoReserva.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def situacao_reserva_params
      params.require(:situacao_reserva).permit(:codigo, :descricao)
    end
end
