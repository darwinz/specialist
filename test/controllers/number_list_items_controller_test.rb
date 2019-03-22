require 'test_helper'

class NumberListItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @number_list_item = number_list_items(:one)
  end

  test "should get index" do
    get number_list_items_url
    assert_response :success
  end

  test "should get new" do
    get new_number_list_item_url
    assert_response :success
  end

  test "should create number_list_item" do
    assert_difference('NumberListItem.count') do
      post number_list_items_url, params: { number_list_item: { data: @number_list_item.data, guid: @number_list_item.guid, sort_number: @number_list_item.sort_number, list_id: @number_list_item.list_id } }
    end

    assert_redirected_to number_list_item_url(NumberListItem.last)
  end

  test "should show number_list_item" do
    get number_list_item_url(@number_list_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_number_list_item_url(@number_list_item)
    assert_response :success
  end

  test "should update number_list_item" do
    patch number_list_item_url(@number_list_item), params: { number_list_item: { data: @number_list_item.data, guid: @number_list_item.guid, sort_number: @number_list_item.sort_number, list_id: @number_list_item.list_id } }
    assert_redirected_to number_list_item_url(@number_list_item)
  end

  test "should destroy number_list_item" do
    assert_difference('NumberListItem.count', -1) do
      delete number_list_item_url(@number_list_item)
    end

    assert_redirected_to number_list_items_url
  end
end
