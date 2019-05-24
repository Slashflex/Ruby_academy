require 'test_helper'

class PokedexControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pokedex_index_url
    assert_response :success
  end

end
