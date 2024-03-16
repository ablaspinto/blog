require "test_helper"

class InformationControllerTest < ActionDispatch::IntegrationTest
  setup do
    @information = information(:one)
  end

  test "should get index" do
    get information_index_url, as: :json
    assert_response :success
  end

  test "should create information" do
    assert_difference("Information.count") do
      post information_index_url, params: { information: { text: @information.text, user_id: @information.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show information" do
    get information_url(@information), as: :json
    assert_response :success
  end

  test "should update information" do
    patch information_url(@information), params: { information: { text: @information.text, user_id: @information.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy information" do
    assert_difference("Information.count", -1) do
      delete information_url(@information), as: :json
    end

    assert_response :no_content
  end
end
