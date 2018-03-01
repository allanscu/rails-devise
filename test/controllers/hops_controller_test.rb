require 'test_helper'

class HopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hop = hops(:one)
  end

  test "should get index" do
    get hops_url
    assert_response :success
  end

  test "should get new" do
    get new_hop_url
    assert_response :success
  end

  test "should create hop" do
    assert_difference('Hop.count') do
      post hops_url, params: { hop: { description: @hop.description, name: @hop.name, slug: @hop.slug } }
    end

    assert_redirected_to hop_url(Hop.last)
  end

  test "should show hop" do
    get hop_url(@hop)
    assert_response :success
  end

  test "should get edit" do
    get edit_hop_url(@hop)
    assert_response :success
  end

  test "should update hop" do
    patch hop_url(@hop), params: { hop: { description: @hop.description, name: @hop.name, slug: @hop.slug } }
    assert_redirected_to hop_url(@hop)
  end

  test "should destroy hop" do
    assert_difference('Hop.count', -1) do
      delete hop_url(@hop)
    end

    assert_redirected_to hops_url
  end
end
