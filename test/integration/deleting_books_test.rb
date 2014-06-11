require 'test_helper'

class DeletingBooksTest < ActionDispatch::IntegrationTest

  setup do
    @deleting = Attendee.create!(fullname: "Mr. Poopy Pants")
  end

  test 'delete an attendee' do

    delete "/attendees/#{@deleting.id}"

    assert_response 204

  end
  

end
