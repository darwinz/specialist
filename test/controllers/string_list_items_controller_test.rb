require 'test_helper'

class StringListItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @string_list_item = string_list_items(:one)
  end

  test "should get index" do
    get string_list_items_url
    assert_response :success
  end

  test "should get new" do
    get new_string_list_item_url
    assert_response :success
  end

  test "should create string_list_item" do
    assert_difference('StringListItem.count') do
      post string_list_items_url, params: { string_list_item: { data: @string_list_item.data, guid: @string_list_item.guid, list_id: @string_list_item.list_id } }
    end

    assert_redirected_to string_list_item_url(StringListItem.last)
  end

  test "should show string_list_item" do
    get string_list_item_url(@string_list_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_string_list_item_url(@string_list_item)
    assert_response :success
  end

  test "should update string_list_item" do
    patch string_list_item_url(@string_list_item), params: { string_list_item: { data: @string_list_item.data, guid: @string_list_item.guid, list_id: @string_list_item.list_id } }
    assert_redirected_to string_list_item_url(@string_list_item)
  end

  test "should destroy string_list_item" do
    assert_difference('StringListItem.count', -1) do
      delete string_list_item_url(@string_list_item)
    end

    assert_redirected_to string_list_items_url
  end
end
