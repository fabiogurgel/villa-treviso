class TipoUsuariosController < ApplicationController
  before_action :set_tipo_usuario, only: [:edit, :update, :destroy]

  # GET /tipo_usuarios/new
  def new
    @tipo_usuario = TipoUsuario.new
    @tipo_usuarios = TipoUsuario.all.paginate(page: params[:page], per_page: 5)
    @action = { title: "Novo", button: "Salvar"}
    @proximo_codigo = TipoUsuario.proximo_codigo
  end

  # GET /tipo_usuarios/1/edit
  def edit
    @proximo_codigo = @tipo_usuario.codigo
    @tipo_usuarios = TipoUsuario.all.paginate(page: params[:page], per_page: 5)
    @action = { title: "Editar", button: "Atualizar"}
  end

  # POST /tipo_usuarios
  # POST /tipo_usuarios.json
  def create
    @tipo_usuario = TipoUsuario.new(tipo_usuario_params)
    @tipo_usuarios = TipoUsuario.all.paginate(page: params[:page], per_page: 5)
    @action = { title: "Novo", button: "Salvar"}

    respond_to do |format|
      if @tipo_usuario.save
        format.html { redirect_to action: "new", notice: 'TIpo Usuário criada com sucesso.' }
        format.json { render :show, status: :created, location: @tipo_usuario }
      else
        format.html { render :new, location: @tipo_usuario}
        format.json { render json: @tipo_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_usuarios/1
  # PATCH/PUT /tipo_usuarios/1.json
  def update
    respond_to do |format|
      if @tipo_usuario.update(tipo_usuario_params)
        format.html { redirect_to action: "new", notice: 'TIpo Usuário atualizado com sucesso..' }
        format.json { render :show, status: :ok, location: @tipo_usuario }
      else
        format.html { render :edit }
        format.json { render json: @tipo_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_usuarios/1
  # DELETE /tipo_usuarios/1.json
  def destroy
    @tipo_usuario.destroy
    respond_to do |format|
      format.html { redirect_to action: "new", notice: 'TIpo Usuário deletado com sucesso..' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_usuario
      @tipo_usuario = TipoUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_usuario_params
      params.require(:tipo_usuario).permit(:codigo, :descricao)
    end
end
