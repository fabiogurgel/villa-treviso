require 'test_helper'

class AreaComunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @area_comum = area_comuns(:one)
  end

  test "should get index" do
    get area_comuns_url
    assert_response :success
  end

  test "should get new" do
    get new_area_comum_url
    assert_response :success
  end

  test "should create area_comum" do
    assert_difference('AreaComum.count') do
      post area_comuns_url, params: { area_comum: { codigo: @area_comum.codigo, descricao: @area_comum.descricao, localizacao: @area_comum.localizacao, quantidade_reserva: @area_comum.quantidade_reserva, tipo_area_comum_id: @area_comum.tipo_area_comum_id } }
    end

    assert_redirected_to area_comum_url(AreaComum.last)
  end

  test "should show area_comum" do
    get area_comum_url(@area_comum)
    assert_response :success
  end

  test "should get edit" do
    get edit_area_comum_url(@area_comum)
    assert_response :success
  end

  test "should update area_comum" do
    patch area_comum_url(@area_comum), params: { area_comum: { codigo: @area_comum.codigo, descricao: @area_comum.descricao, localizacao: @area_comum.localizacao, quantidade_reserva: @area_comum.quantidade_reserva, tipo_area_comum_id: @area_comum.tipo_area_comum_id } }
    assert_redirected_to area_comum_url(@area_comum)
  end

  test "should destroy area_comum" do
    assert_difference('AreaComum.count', -1) do
      delete area_comum_url(@area_comum)
    end

    assert_redirected_to area_comuns_url
  end
end
