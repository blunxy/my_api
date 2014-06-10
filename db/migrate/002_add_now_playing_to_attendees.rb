class AddNowPlayingToAttendees < ActiveRecord::Migration
  def change
    add_column :attendees, :now_playing, :integer
  end
end
