class CreateKanyeTable < ActiveRecord::Migration[5.2]
  def change
    create_table :kanyes do |t|
    t.string :name
    t.integer :album_sales
    t.string :hit_song
  end
  end
end
