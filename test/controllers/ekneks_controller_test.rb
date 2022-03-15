require "test_helper"

class EkneksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eknek = ekneks(:one)
  end

  test "should get index" do
    get ekneks_url
    assert_response :success
  end

  test "should get new" do
    get new_eknek_url
    assert_response :success
  end

  test "should create eknek" do
    assert_difference("Eknek.count") do
      post ekneks_url, params: { eknek: { description: @eknek.description, title: @eknek.title } }
    end

    assert_redirected_to eknek_url(Eknek.last)
  end

  test "should show eknek" do
    get eknek_url(@eknek)
    assert_response :success
  end

  test "should get edit" do
    get edit_eknek_url(@eknek)
    assert_response :success
  end

  test "should update eknek" do
    patch eknek_url(@eknek), params: { eknek: { description: @eknek.description, title: @eknek.title } }
    assert_redirected_to eknek_url(@eknek)
  end

  test "should destroy eknek" do
    assert_difference("Eknek.count", -1) do
      delete eknek_url(@eknek)
    end

    assert_redirected_to ekneks_url
  end
end
