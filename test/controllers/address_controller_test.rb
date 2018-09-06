require 'test_helper'

class AddressControllerTest < ActionDispatch::IntegrationTest
  test "should get idex" do
    get address_idex_url
    assert_response :success
  end

end
