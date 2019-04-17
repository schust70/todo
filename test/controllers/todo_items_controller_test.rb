require 'test_helper'

class TodoItemsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @todo_item = todo_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todo_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create todo_item" do
    assert_difference('TodoItem.count') do
      post :create, todo_item: { content: @todo_item.content }
    end

    assert_redirected_to todo_list_path(assigns(:todo_item))
  end

  test "should destroy todo_list" do
    assert_difference('TodoItem.count', -1) do
      delete :destroy, id: @todo_item
    end

    assert_redirected_to todo_lists_path
  end
end
