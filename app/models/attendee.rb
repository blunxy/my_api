class Attendee < ActiveRecord::Base

  scope :free, -> { where('now_playing IS NOT NULL') }

  validates_presence_of :fullname

  belongs_to :is_playing, 
  class_name: "Game", 
  foreign_key: 'now_playing', 
  inverse_of: :players

end
