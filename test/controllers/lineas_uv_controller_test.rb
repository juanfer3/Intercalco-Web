require 'test_helper'

class LineasUvControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linea_uv = lineas_uv(:one)
  end

  test "should get index" do
    get lineas_uv_url
    assert_response :success
  end

  test "should get new" do
    get new_linea_uv_url
    assert_response :success
  end

  test "should create linea_uv" do
    assert_difference('LineaUv.count') do
      post lineas_uv_url, params: { linea_uv: { caracteristica: @linea_uv.caracteristica, tipo_de_linea: @linea_uv.tipo_de_linea } }
    end

    assert_redirected_to linea_uv_url(LineaUv.last)
  end

  test "should show linea_uv" do
    get linea_uv_url(@linea_uv)
    assert_response :success
  end

  test "should get edit" do
    get edit_linea_uv_url(@linea_uv)
    assert_response :success
  end

  test "should update linea_uv" do
    patch linea_uv_url(@linea_uv), params: { linea_uv: { caracteristica: @linea_uv.caracteristica, tipo_de_linea: @linea_uv.tipo_de_linea } }
    assert_redirected_to linea_uv_url(@linea_uv)
  end

  test "should destroy linea_uv" do
    assert_difference('LineaUv.count', -1) do
      delete linea_uv_url(@linea_uv)
    end

    assert_redirected_to lineas_uv_url
  end
end
