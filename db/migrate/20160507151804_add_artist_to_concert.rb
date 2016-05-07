class AddArtistToConcert < ActiveRecord::Migration
  def change
    add_reference :concerts, :artist, index: true, foreign_key: true
  end
end
