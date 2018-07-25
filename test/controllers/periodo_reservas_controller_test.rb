require 'test_helper'

class PeriodoReservasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @periodo_reserva = periodo_reservas(:one)
  end

  test "should get index" do
    get periodo_reservas_url
    assert_response :success
  end

  test "should get new" do
    get new_periodo_reserva_url
    assert_response :success
  end

  test "should create periodo_reserva" do
    assert_difference('PeriodoReserva.count') do
      post periodo_reservas_url, params: { periodo_reserva: { codigo: @periodo_reserva.codigo, descricao: @periodo_reserva.descricao } }
    end

    assert_redirected_to periodo_reserva_url(PeriodoReserva.last)
  end

  test "should show periodo_reserva" do
    get periodo_reserva_url(@periodo_reserva)
    assert_response :success
  end

  test "should get edit" do
    get edit_periodo_reserva_url(@periodo_reserva)
    assert_response :success
  end

  test "should update periodo_reserva" do
    patch periodo_reserva_url(@periodo_reserva), params: { periodo_reserva: { codigo: @periodo_reserva.codigo, descricao: @periodo_reserva.descricao } }
    assert_redirected_to periodo_reserva_url(@periodo_reserva)
  end

  test "should destroy periodo_reserva" do
    assert_difference('PeriodoReserva.count', -1) do
      delete periodo_reserva_url(@periodo_reserva)
    end

    assert_redirected_to periodo_reservas_url
  end
end
