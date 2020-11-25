require 'test_helper'

class LibraryGameControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get library_game_index_url
    assert_response :success
  end

end
