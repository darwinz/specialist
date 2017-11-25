require 'test_helper'

class ComplexListItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complex_list_item = complex_list_items(:one)
  end

  test "should get index" do
    get complex_list_items_url
    assert_response :success
  end

  test "should get new" do
    get new_complex_list_item_url
    assert_response :success
  end

  test "should create complex_list_item" do
    assert_difference('ComplexListItem.count') do
      post complex_list_items_url, params: { complex_list_item: { data: @complex_list_item.data, guid: @complex_list_item.guid, list_id: @complex_list_item.list_id, sort_number: @complex_list_item.sort_number } }
    end

    assert_redirected_to complex_list_item_url(ComplexListItem.last)
  end

  test "should show complex_list_item" do
    get complex_list_item_url(@complex_list_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_complex_list_item_url(@complex_list_item)
    assert_response :success
  end

  test "should update complex_list_item" do
    patch complex_list_item_url(@complex_list_item), params: { complex_list_item: { data: @complex_list_item.data, guid: @complex_list_item.guid, list_id: @complex_list_item.list_id, sort_number: @complex_list_item.sort_number } }
    assert_redirected_to complex_list_item_url(@complex_list_item)
  end

  test "should destroy complex_list_item" do
    assert_difference('ComplexListItem.count', -1) do
      delete complex_list_item_url(@complex_list_item)
    end

    assert_redirected_to complex_list_items_url
  end
end
