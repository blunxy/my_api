require 'test_helper'
require 'mocha/mini_test'


class ListingAttendeesTest < ActionDispatch::IntegrationTest

  setup do
    Attendee.create!(fullname: 'Jordan Pratt', email: 'blunxy@gmail.com')
    Attendee.create!(fullname: 'Mark Stadel', email: 'mstadel@example.com')
  end

  test 'listing attendees' do
    get '/attendees'

    assert_response 200
    assert is_json?(response)
    assert_equal 2, num_records_in(response)
  end


  test 'listing attendees by full name fragment' do
    get '/attendees?name=Jo' 

    assert_response 200
    assert is_json?(response)
    assert_equal 1, num_records_in(response)
  end
  
end
