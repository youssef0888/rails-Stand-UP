require "test_helper"

class EstablishmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get establishments_index_url
    assert_response :success
  end
end
