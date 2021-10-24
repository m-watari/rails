require "test_helper"

class NewsHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_history = news_histories(:one)
  end

  test "should get index" do
    get news_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_news_history_url
    assert_response :success
  end

  test "should create news_history" do
    assert_difference('NewsHistory.count') do
      post news_histories_url, params: { news_history: { detail: @news_history.detail, price: @news_history.price, user_id: @news_history.user_id } }
    end

    assert_redirected_to news_history_url(NewsHistory.last)
  end

  test "should show news_history" do
    get news_history_url(@news_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_news_history_url(@news_history)
    assert_response :success
  end

  test "should update news_history" do
    patch news_history_url(@news_history), params: { news_history: { detail: @news_history.detail, price: @news_history.price, user_id: @news_history.user_id } }
    assert_redirected_to news_history_url(@news_history)
  end

  test "should destroy news_history" do
    assert_difference('NewsHistory.count', -1) do
      delete news_history_url(@news_history)
    end

    assert_redirected_to news_histories_url
  end
end
