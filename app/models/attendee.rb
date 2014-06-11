class Attendee < ActiveRecord::Base

  scope :free, -> { where('now_playing IS NOT NULL') }

  validates_presence_of :fullname

end
