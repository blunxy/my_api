class Attendee < ActiveRecord::Base

  scope :free, -> { where('now_playing IS NOT NULL') }

end
