require 'test_helper'

class MallasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @malla = mallas(:one)
  end

  test "should get index" do
    get mallas_url
    assert_response :success
  end

  test "should get new" do
    get new_malla_url
    assert_response :success
  end

  test "should create malla" do
    assert_difference('Malla.count') do
      post mallas_url, params: { malla: { caracteristica: @malla.caracteristica, num_malla: @malla.num_malla } }
    end

    assert_redirected_to malla_url(Malla.last)
  end

  test "should show malla" do
    get malla_url(@malla)
    assert_response :success
  end

  test "should get edit" do
    get edit_malla_url(@malla)
    assert_response :success
  end

  test "should update malla" do
    patch malla_url(@malla), params: { malla: { caracteristica: @malla.caracteristica, num_malla: @malla.num_malla } }
    assert_redirected_to malla_url(@malla)
  end

  test "should destroy malla" do
    assert_difference('Malla.count', -1) do
      delete malla_url(@malla)
    end

    assert_redirected_to mallas_url
  end
end
