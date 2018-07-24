require 'test_helper'

class TipoAreaComunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_area_comum = tipo_area_comuns(:one)
  end

  test "should get index" do
    get tipo_area_comuns_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_area_comum_url
    assert_response :success
  end

  test "should create tipo_area_comum" do
    assert_difference('TipoAreaComum.count') do
      post tipo_area_comuns_url, params: { tipo_area_comum: { codigo: @tipo_area_comum.codigo, descricao: @tipo_area_comum.descricao } }
    end

    assert_redirected_to tipo_area_comum_url(TipoAreaComum.last)
  end

  test "should show tipo_area_comum" do
    get tipo_area_comum_url(@tipo_area_comum)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_area_comum_url(@tipo_area_comum)
    assert_response :success
  end

  test "should update tipo_area_comum" do
    patch tipo_area_comum_url(@tipo_area_comum), params: { tipo_area_comum: { codigo: @tipo_area_comum.codigo, descricao: @tipo_area_comum.descricao } }
    assert_redirected_to tipo_area_comum_url(@tipo_area_comum)
  end

  test "should destroy tipo_area_comum" do
    assert_difference('TipoAreaComum.count', -1) do
      delete tipo_area_comum_url(@tipo_area_comum)
    end

    assert_redirected_to tipo_area_comuns_url
  end
end
