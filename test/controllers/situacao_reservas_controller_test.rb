require 'test_helper'

class SituacaoReservasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @situacao_reserva = situacao_reservas(:one)
  end

  test "should get index" do
    get situacao_reservas_url
    assert_response :success
  end

  test "should get new" do
    get new_situacao_reserva_url
    assert_response :success
  end

  test "should create situacao_reserva" do
    assert_difference('SituacaoReserva.count') do
      post situacao_reservas_url, params: { situacao_reserva: { codigo: @situacao_reserva.codigo, descricao: @situacao_reserva.descricao } }
    end

    assert_redirected_to situacao_reserva_url(SituacaoReserva.last)
  end

  test "should show situacao_reserva" do
    get situacao_reserva_url(@situacao_reserva)
    assert_response :success
  end

  test "should get edit" do
    get edit_situacao_reserva_url(@situacao_reserva)
    assert_response :success
  end

  test "should update situacao_reserva" do
    patch situacao_reserva_url(@situacao_reserva), params: { situacao_reserva: { codigo: @situacao_reserva.codigo, descricao: @situacao_reserva.descricao } }
    assert_redirected_to situacao_reserva_url(@situacao_reserva)
  end

  test "should destroy situacao_reserva" do
    assert_difference('SituacaoReserva.count', -1) do
      delete situacao_reserva_url(@situacao_reserva)
    end

    assert_redirected_to situacao_reservas_url
  end
end
