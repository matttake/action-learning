require 'test_helper'

class MaximsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maxim = maxims(:one)
  end

  test "should get index" do
    get maxims_url
    assert_response :success
  end

  test "should get new" do
    get new_maxim_url
    assert_response :success
  end

  test "should create maxim" do
    assert_difference('Maxim.count') do
      post maxims_url, params: { maxim: { content: @maxim.content, title: @maxim.title } }
    end

    assert_redirected_to maxim_url(Maxim.last)
  end

  test "should show maxim" do
    get maxim_url(@maxim)
    assert_response :success
  end

  test "should get edit" do
    get edit_maxim_url(@maxim)
    assert_response :success
  end

  test "should update maxim" do
    patch maxim_url(@maxim), params: { maxim: { content: @maxim.content, title: @maxim.title } }
    assert_redirected_to maxim_url(@maxim)
  end

  test "should destroy maxim" do
    assert_difference('Maxim.count', -1) do
      delete maxim_url(@maxim)
    end

    assert_redirected_to maxims_url
  end
end
