# frozen_string_literal: true

class Usuarios::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    raise params.inspect
    super
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  protected

  def configure_sign_in_params
  # If you have extra params to permit, append them to the sanitizer.
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end
end
