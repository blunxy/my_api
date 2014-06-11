require 'test_helper'

class ListingGamesTest < ActionDispatch::IntegrationTest

  setup do
    @player = Attendee.create!(fullname: 'Mark Stadel')
    @player.create_is_playing!(name: 'Byzantium')

    Game.create!(name: 'Through the Ages')
  end

  test 'lists games' do

    get '/games'

    assert_response 200
    assert is_json?(response)

  end

end
