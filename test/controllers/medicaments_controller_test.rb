require 'test_helper'

class MedicamentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get medicaments_index_url
    assert_response :success
  end

  test "should get new" do
    get medicaments_new_url
    assert_response :success
  end

  test "should get create" do
    get medicaments_create_url
    assert_response :success
  end

  test "should get edit" do
    get medicaments_edit_url
    assert_response :success
  end

  test "should get update" do
    get medicaments_update_url
    assert_response :success
  end

  test "should get show" do
    get medicaments_show_url
    assert_response :success
  end

end
