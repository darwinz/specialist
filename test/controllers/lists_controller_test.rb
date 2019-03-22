require 'test_helper'

class ListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list = lists(:one)
  end

  test "should get index" do
    get lists_url
    assert_response :success
  end

  test "should get new" do
    get new_list_url
    assert_response :success
  end

  test "should create list" do
    assert_difference('List.count') do
      post lists_url, params: {
        list: {
          created_at: @list.created_at,
          title: @list.title,
          id: @list.id,
          updated_at: @list.updated_at,
          description: @list.description,
          list_type_id: @list.list_type_id,
          guid: @list.guid,
          active: @list.active
        }
      }
    end

    assert_redirected_to list_url(List.last)
  end

  test "should show list" do
    get list_url(@list)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_url(@list)
    assert_response :success
  end

  test "should update list" do
    patch list_url(@list), params: {
      list: {
        created_at: @list.created_at,
        title: @list.title,
        id: @list.id,
        updated_at: @list.updated_at,
        description: @list.description,
        list_type_id: @list.list_type_id,
        guid: @list.guid,
        active: @list.active
      }
    }
    assert_redirected_to list_url(@list)
  end

  test "should destroy list" do
    assert(@list.active, 0) do
      delete list_url(@list)
    end
  end
end
