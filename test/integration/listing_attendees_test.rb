require 'test_helper'
require 'mocha/mini_test'


class ListingAttendeesTest < ActionDispatch::IntegrationTest

  setup do
    @game = Game.create!(name: 'Die Macher')
    @game.players.create!(fullname: 'Jordan Pratt', email: 'blunxy@gmail.com')

    Attendee.create!(fullname: 'Mark Stadel', email: 'mstadel@example.com')
  end

  test 'listing attendees' do
    get '/attendees'

    assert_response 200
    assert is_json?(response)

    attendees = body_as_json(response)
    assert_equal Attendee.count, attendees.size

    found_attendee = Attendee.find(attendees.first[:id])
    assert_equal @game.id, found_attendee.now_playing

  end


  test 'listing attendees by full name fragment' do
    get '/attendees?name=Jo' 

    assert_response 200
    assert is_json?(response)
    assert_equal 1, num_records_in(response)
  end
  
end
