require 'test_helper'

class RafflesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get raffles_create_url
    assert_response :success
  end

end
