require 'test_helper'

# Home Controller Test
class HomeControllerTest < ActionDispatch::IntegrationTest
  test'should get index' do
    get home_index_url
    assert_response :success
  end
end
