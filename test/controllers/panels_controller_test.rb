require 'test_helper'

class PanelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @panel = panels(:one)
  end

  test "should get index" do
    get panels_url, as: :json
    assert_response :success
  end

  test "should create panel" do
    assert_difference('Panel.count') do
      post panels_url, params: { panel: { chapter_id: @panel.chapter_id, kind: @panel.kind, name: @panel.name, number: @panel.number } }, as: :json
    end

    assert_response 201
  end

  test "should show panel" do
    get panel_url(@panel), as: :json
    assert_response :success
  end

  test "should update panel" do
    patch panel_url(@panel), params: { panel: { chapter_id: @panel.chapter_id, kind: @panel.kind, name: @panel.name, number: @panel.number } }, as: :json
    assert_response 200
  end

  test "should destroy panel" do
    assert_difference('Panel.count', -1) do
      delete panel_url(@panel), as: :json
    end

    assert_response 204
  end
end
