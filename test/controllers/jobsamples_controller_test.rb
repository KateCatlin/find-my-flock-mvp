require 'test_helper'

class JobsamplesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jobsamples_index_url
    assert_response :success
  end

end
