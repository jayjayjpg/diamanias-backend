require 'test_helper'

class LayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @layer = layers(:one)
  end

  test "should get index" do
    get layers_url, as: :json
    assert_response :success
  end

  test "should create layer" do
    assert_difference('Layer.count') do
      post layers_url, params: { layer: { bg_img: @layer.bg_img, fg_img: @layer.fg_img, kind: @layer.kind, panel_id: @layer.panel_id, style_class: @layer.style_class } }, as: :json
    end

    assert_response 201
  end

  test "should show layer" do
    get layer_url(@layer), as: :json
    assert_response :success
  end

  test "should update layer" do
    patch layer_url(@layer), params: { layer: { bg_img: @layer.bg_img, fg_img: @layer.fg_img, kind: @layer.kind, panel_id: @layer.panel_id, style_class: @layer.style_class } }, as: :json
    assert_response 200
  end

  test "should destroy layer" do
    assert_difference('Layer.count', -1) do
      delete layer_url(@layer), as: :json
    end

    assert_response 204
  end
end
