require 'test_helper'

class ListingGamesTest < ActionDispatch::IntegrationTest

  test 'lists games' do

    get '/games'

    assert_response 200
    assert is_json?(response)

  end

end
