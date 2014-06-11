class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :bgg_id
      t.string :img_url
      t.integer :year
      t.string :publisher

      t.timestamps
    end
  end
end
