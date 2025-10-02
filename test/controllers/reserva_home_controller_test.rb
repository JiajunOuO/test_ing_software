require "test_helper"

class ReservaHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reserva_home_index_url
    assert_response :success
  end
end
